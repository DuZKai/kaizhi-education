package com.edu.kaizhi.search.service.impl;

import com.alibaba.fastjson.JSON;
import com.edu.kaizhi.base.model.PageParams;
import com.edu.kaizhi.search.dto.SearchCourseParamDto;
import com.edu.kaizhi.search.dto.SearchPageResultDto;
import com.edu.kaizhi.search.dto.SearchTagDto;
import com.edu.kaizhi.search.po.CourseIndex;
import com.edu.kaizhi.search.service.CourseSearchService;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.apache.lucene.search.TotalHits;
import org.elasticsearch.action.search.SearchRequest;
import org.elasticsearch.action.search.SearchResponse;
import org.elasticsearch.client.RequestOptions;
import org.elasticsearch.client.RestHighLevelClient;
import org.elasticsearch.common.text.Text;
import org.elasticsearch.index.query.BoolQueryBuilder;
import org.elasticsearch.index.query.MultiMatchQueryBuilder;
import org.elasticsearch.index.query.QueryBuilders;
import org.elasticsearch.index.query.functionscore.FunctionScoreQueryBuilder;
import org.elasticsearch.index.query.functionscore.ScoreFunctionBuilders;
import org.elasticsearch.search.SearchHit;
import org.elasticsearch.search.SearchHits;
import org.elasticsearch.search.aggregations.AggregationBuilders;
import org.elasticsearch.search.aggregations.Aggregations;
import org.elasticsearch.search.aggregations.bucket.terms.Terms;
import org.elasticsearch.search.aggregations.bucket.terms.TermsAggregationBuilder;
import org.elasticsearch.search.aggregations.metrics.TopHits;
import org.elasticsearch.search.aggregations.metrics.TopHitsAggregationBuilder;
import org.elasticsearch.search.builder.SearchSourceBuilder;
import org.elasticsearch.search.fetch.subphase.FetchSourceContext;
import org.elasticsearch.search.fetch.subphase.highlight.HighlightBuilder;
import org.elasticsearch.search.fetch.subphase.highlight.HighlightField;
import org.elasticsearch.search.sort.SortOrder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import static com.edu.kaizhi.base.constant.SearchServiceConstant.*;
import static com.edu.kaizhi.base.constant.SystemStatusConstant.ADVERTISING_COURSE;


/**
 * 课程搜索service实现类
 */
@Slf4j
@Service
public class CourseSearchServiceImpl implements CourseSearchService {

    @Value("${elasticsearch.course.index}")
    private String courseIndexStore;
    @Value("${elasticsearch.course.source_fields}")
    private String sourceFields;

    @Autowired
    RestHighLevelClient client;

    public SearchPageResultDto<CourseIndex> queryCoursePubIndex(PageParams pageParams, SearchCourseParamDto courseSearchParam) {

        //设置索引
        SearchRequest searchRequest = new SearchRequest(courseIndexStore);

        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        BoolQueryBuilder boolQueryBuilder = QueryBuilders.boolQuery();
        //source源字段过滤
        String[] sourceFieldsArray = sourceFields.split(",");
        searchSourceBuilder.fetchSource(sourceFieldsArray, new String[]{});
        if (courseSearchParam == null) {
            courseSearchParam = new SearchCourseParamDto();
        }
        //关键字
        if (StringUtils.isNotEmpty(courseSearchParam.getKeywords())) {
            //匹配关键字
            MultiMatchQueryBuilder multiMatchQueryBuilder = QueryBuilders.multiMatchQuery(courseSearchParam.getKeywords(), FIELD_NAME, FIELD_DESCRIPTION);
            //设置匹配占比
            multiMatchQueryBuilder.minimumShouldMatch(MINIMUM_SHOULD_MATCH_PERCENTAGE);
            //提升另个字段的Boost值
            multiMatchQueryBuilder.field(FIELD_NAME, NAME_FIELD_BOOST);
            boolQueryBuilder.must(multiMatchQueryBuilder);
        }
        //过滤
        if (StringUtils.isNotEmpty(courseSearchParam.getMt())) {
            boolQueryBuilder.filter(QueryBuilders.termQuery(FIELD_MT_NAME_KEYWORD, courseSearchParam.getMt()));
        }
        if (StringUtils.isNotEmpty(courseSearchParam.getSt())) {
            boolQueryBuilder.filter(QueryBuilders.termQuery(FIELD_ST_NAME_KEYWORD, courseSearchParam.getSt()));
        }
        if (StringUtils.isNotEmpty(courseSearchParam.getGrade())) {
            boolQueryBuilder.filter(QueryBuilders.termQuery(FIELD_GRADE, courseSearchParam.getGrade()));
        }

        //分页
        Long pageNo = pageParams.getPageNo();
        Long pageSize = pageParams.getPageSize();
        int start = (int) ((pageNo - 1) * pageSize);
        searchSourceBuilder.from(start);
        searchSourceBuilder.size(Math.toIntExact(pageSize));
        //布尔查询
        searchSourceBuilder.query(boolQueryBuilder);

        // 按照价格排序
        if (StringUtils.isNotEmpty(courseSearchParam.getSortType())) {
            if ("1".equals(courseSearchParam.getSortType())) {
                // 价格升序
                searchSourceBuilder.sort(FIELD_PRICE, SortOrder.ASC);
            } else if ("2".equals(courseSearchParam.getSortType())) {
                // 价格降序
                searchSourceBuilder.sort(FIELD_PRICE, SortOrder.DESC);
            }
        }

        // 在原有查询的基础上应用 Function Score Query
        FunctionScoreQueryBuilder functionScoreQuery = QueryBuilders.functionScoreQuery(
                boolQueryBuilder, // 原有的bool查询
                new FunctionScoreQueryBuilder.FilterFunctionBuilder[]{
                        new FunctionScoreQueryBuilder.FilterFunctionBuilder(
                                // 过滤条件：只考虑 FIELD_IS_AD 为 800002 的文档
                                QueryBuilders.termQuery(FIELD_IS_AD, ADVERTISING_COURSE),
                                // 算分函数：给符合条件的文档增加权重
                                ScoreFunctionBuilders.weightFactorFunction(ID_BASE_WEIGHT)
                                // // 使用随机权重生成器
                                // ScoreFunctionBuilders.randomFunction() // 生成一个随机分数
                                //         .seed(System.currentTimeMillis()) // 使用当前时间戳作为种子，确保随机性
                                //         .setWeight(ID_BASE_WEIGHT) // 设置一个基础权重
                                //         .setField(FIELD_ID) // 设置一个随机字段，确保每次查询都是随机的
                                // 算分函数：基于 `price` 字段增加权重
                                // ScoreFunctionBuilders.fieldValueFactorFunction(FIELD_PRICE)
                                //         .modifier(FieldValueFactorFunction.Modifier.LOG1P) // 使用对数函数来调整加权方式
                                //         .factor(ID_BASE_WEIGHT) // 设置加权因子
                                //         .missing(0) // 如果价格字段为空，则默认为0
                        )
                }
        );

        // 将 function score 查询设置到搜索源中
        searchSourceBuilder.query(functionScoreQuery);

        //高亮设置
        HighlightBuilder highlightBuilder = new HighlightBuilder();
        highlightBuilder.preTags(HIGHLIGHT_PRE_TAG);
        highlightBuilder.postTags(HIGHLIGHT_POST_TAG);
        //设置高亮字段
        highlightBuilder.fields().add(new HighlightBuilder.Field(FIELD_NAME));
        searchSourceBuilder.highlighter(highlightBuilder);
        //请求搜索
        searchRequest.source(searchSourceBuilder);

        //聚合设置
        buildAggregation(searchRequest);
        SearchResponse searchResponse = null;
        try {
            searchResponse = client.search(searchRequest, RequestOptions.DEFAULT);
        } catch (IOException e) {
            e.printStackTrace();
            log.error("课程搜索异常：{}", e.getMessage());
            return new SearchPageResultDto<CourseIndex>(new ArrayList(), 0, 0, 0);
        }

        //结果集处理
        SearchHits hits = searchResponse.getHits();
        SearchHit[] searchHits = hits.getHits();
        //记录总数
        TotalHits totalHits = hits.getTotalHits();
        //数据列表
        List<CourseIndex> list = new ArrayList<>();

        for (SearchHit hit : searchHits) {

            String sourceAsString = hit.getSourceAsString();
            CourseIndex courseIndex = JSON.parseObject(sourceAsString, CourseIndex.class);

            //取出source
            //课程id
            Long id = courseIndex.getId();
            //取出名称
            String name = courseIndex.getName();
            //取出高亮字段内容
            Map<String, HighlightField> highlightFields = hit.getHighlightFields();
            if (highlightFields != null) {
                HighlightField nameField = highlightFields.get(FIELD_NAME);
                if (nameField != null) {
                    Text[] fragments = nameField.getFragments();
                    StringBuffer stringBuffer = new StringBuffer();
                    for (Text str : fragments) {
                        stringBuffer.append(str.string());
                    }
                    name = stringBuffer.toString();

                }
            }
            courseIndex.setId(id);
            courseIndex.setName(name);

            list.add(courseIndex);

        }
        SearchPageResultDto<CourseIndex> pageResult = new SearchPageResultDto<>(list, totalHits.value, pageNo, pageSize);

        //获取聚合结果
        List<String> mtList = getAggregation(searchResponse.getAggregations(), MT_AGGREGATION);
        List<String> stList = getAggregation(searchResponse.getAggregations(), ST_AGGREGATION);

        pageResult.setMtList(mtList);
        pageResult.setStList(stList);

        return pageResult;
    }


    private void buildAggregation(SearchRequest request) {
        request.source().aggregation(AggregationBuilders
                .terms(MT_AGGREGATION)
                .field(FIELD_MT_NAME_KEYWORD)
                .size(Aggregation_SIZE)
        );
        request.source().aggregation(AggregationBuilders
                .terms(ST_AGGREGATION)
                .field(FIELD_ST_NAME_KEYWORD)
                .size(Aggregation_SIZE)
        );

    }

    private List<String> getAggregation(Aggregations aggregations, String aggName) {
        // 4.1.根据聚合名称获取聚合结果
        Terms brandTerms = aggregations.get(aggName);
        // 4.2.获取buckets
        List<? extends Terms.Bucket> buckets = brandTerms.getBuckets();
        // 4.3.遍历
        List<String> brandList = new ArrayList<>();
        for (Terms.Bucket bucket : buckets) {
            // 4.4.获取key
            String key = bucket.getKeyAsString();
            brandList.add(key);
        }
        return brandList;
    }

    public void buildTagAggregation(SearchRequest request) {
        // request.source().aggregation(AggregationBuilders
        //         .terms(MT_AGGREGATION)
        //         .field(FIELD_MT_KEYWORD)
        //         .size(100)
        //         .subAggregation(
        //                 AggregationBuilders.terms(ST_AGGREGATION)
        //                         .field(FIELD_ST_KEYWORD)
        //                         .size(100))
        // );

        TermsAggregationBuilder mtAgg = AggregationBuilders.terms(MT_AGGREGATION)
                .field(FIELD_MT_KEYWORD)
                .size(100);
        TopHitsAggregationBuilder mtNameAgg = AggregationBuilders.topHits(FIELD_MT_NAME)
                .fetchSource(new FetchSourceContext(true, new String[]{FIELD_MT_NAME}, null))
                .size(1);

        mtAgg.subAggregation(mtNameAgg);

        TermsAggregationBuilder stAgg = AggregationBuilders.terms(ST_AGGREGATION)
                .field(FIELD_ST_KEYWORD)
                .size(100);

        TopHitsAggregationBuilder stNameAgg = AggregationBuilders.topHits(FIELD_ST_NAME)
                .fetchSource(new FetchSourceContext(true, new String[]{FIELD_ST_NAME}, null))
                .size(1);

        stAgg.subAggregation(stNameAgg);

        mtAgg.subAggregation(stAgg);

        request.source().aggregation(mtAgg);
    }

    public List<SearchTagDto> queryCourseTag() {

        //设置索引
        SearchRequest searchRequest = new SearchRequest(courseIndexStore);
        buildTagAggregation(searchRequest);

        SearchResponse searchResponse = null;
        try {
            searchResponse = client.search(searchRequest, RequestOptions.DEFAULT);
        } catch (IOException e) {
            e.printStackTrace();
            log.error("课程搜索异常：{}", e.getMessage());
            return new LinkedList<>();
        }
        Aggregations aggregations = searchResponse.getAggregations();
        List<SearchTagDto> res = new LinkedList<>();
        // List<String> list = getAggregation(searchResponse.getAggregations(), MT_AGGREGATION);

        Terms brandTerms = aggregations.get(MT_AGGREGATION);
        List<? extends Terms.Bucket> buckets = brandTerms.getBuckets();
        for (Terms.Bucket bucket : buckets) {
            SearchTagDto searchTagDto = new SearchTagDto();

            TopHits mtNameTopHits = bucket.getAggregations().get(FIELD_MT_NAME);
            SearchHit[] mtNameHits = mtNameTopHits.getHits().getHits();
            String mtName = mtNameHits.length > 0 ? mtNameHits[0].getSourceAsMap().get(FIELD_MT_NAME).toString() : bucket.getKeyAsString();

            String key = bucket.getKeyAsString();
            searchTagDto.setValue(key);
            searchTagDto.setLabel(mtName);
            searchTagDto.setChildren(new ArrayList<>());
            // List<String> children = getAggregation(bucket.getAggregations(), ST_AGGREGATION);
            // for(String child: children){
            //     SearchTagDto childTag = new SearchTagDto();
            //     childTag.setValue(child);
            //     childTag.setLabel(child);
            //     searchTagDto.getChildren().add(childTag);
            // }
            // 获取子标签
            Terms stTerms = bucket.getAggregations().get(ST_AGGREGATION);
            List<? extends Terms.Bucket> stBuckets = stTerms.getBuckets();
            for (Terms.Bucket stBucket : stBuckets) {
                SearchTagDto childTag = new SearchTagDto();

                // 获取stName作为子标签的label
                TopHits stNameTopHits = stBucket.getAggregations().get(FIELD_ST_NAME);
                SearchHit[] stNameHits = stNameTopHits.getHits().getHits();
                String stName = stNameHits.length > 0 ? stNameHits[0].getSourceAsMap().get(FIELD_ST_NAME).toString() : stBucket.getKeyAsString();

                childTag.setValue(stBucket.getKeyAsString());
                childTag.setLabel(stName);
                searchTagDto.getChildren().add(childTag);
            }
            res.add(searchTagDto);
        }
        return res;
    }

    public SearchPageResultDto<CourseIndex> queryCoursePubNewIndex(PageParams pageParams, SearchCourseParamDto courseSearchParam) {

        //设置索引
        SearchRequest searchRequest = new SearchRequest(courseIndexStore);

        SearchSourceBuilder searchSourceBuilder = new SearchSourceBuilder();
        BoolQueryBuilder boolQueryBuilder = QueryBuilders.boolQuery();
        //source源字段过滤
        String[] sourceFieldsArray = sourceFields.split(",");
        searchSourceBuilder.fetchSource(sourceFieldsArray, new String[]{});
        if (courseSearchParam == null) {
            courseSearchParam = new SearchCourseParamDto();
        }
        //关键字
        if (StringUtils.isNotEmpty(courseSearchParam.getKeywords())) {
            //匹配关键字
            MultiMatchQueryBuilder multiMatchQueryBuilder = QueryBuilders.multiMatchQuery(courseSearchParam.getKeywords(), FIELD_NAME, FIELD_DESCRIPTION);
            //设置匹配占比
            multiMatchQueryBuilder.minimumShouldMatch(MINIMUM_SHOULD_MATCH_PERCENTAGE);
            //提升另个字段的Boost值
            multiMatchQueryBuilder.field(FIELD_NAME, NAME_FIELD_BOOST);
            boolQueryBuilder.must(multiMatchQueryBuilder);
        }
        //过滤
        if (StringUtils.isNotEmpty(courseSearchParam.getMt())) {
            boolQueryBuilder.filter(QueryBuilders.termQuery(FIELD_MT_KEYWORD, courseSearchParam.getMt()));
        }
        if (StringUtils.isNotEmpty(courseSearchParam.getSt())) {
            boolQueryBuilder.filter(QueryBuilders.termQuery(FIELD_ST_KEYWORD, courseSearchParam.getSt()));
        }
        if (StringUtils.isNotEmpty(courseSearchParam.getGrade())) {
            boolQueryBuilder.filter(QueryBuilders.termQuery(FIELD_GRADE, courseSearchParam.getGrade()));
        }

        //分页
        Long pageNo = pageParams.getPageNo();
        Long pageSize = pageParams.getPageSize();
        int start = (int) ((pageNo - 1) * pageSize);
        searchSourceBuilder.from(start);
        searchSourceBuilder.size(Math.toIntExact(pageSize));
        //布尔查询
        searchSourceBuilder.query(boolQueryBuilder);

        // 按照价格排序
        if (StringUtils.isNotEmpty(courseSearchParam.getSortType())) {
            if ("1".equals(courseSearchParam.getSortType())) {
                // 价格升序
                searchSourceBuilder.sort(FIELD_PRICE, SortOrder.ASC);
            } else if ("2".equals(courseSearchParam.getSortType())) {
                // 价格降序
                searchSourceBuilder.sort(FIELD_PRICE, SortOrder.DESC);
            }
        }

        // 在原有查询的基础上应用 Function Score Query
        FunctionScoreQueryBuilder functionScoreQuery = QueryBuilders.functionScoreQuery(
                boolQueryBuilder, // 原有的bool查询
                new FunctionScoreQueryBuilder.FilterFunctionBuilder[]{
                        new FunctionScoreQueryBuilder.FilterFunctionBuilder(
                                // 过滤条件：只考虑 FIELD_IS_AD 为 800002 的文档
                                QueryBuilders.termQuery(FIELD_IS_AD, ADVERTISING_COURSE),
                                // 算分函数：给符合条件的文档增加权重
                                ScoreFunctionBuilders.weightFactorFunction(ID_BASE_WEIGHT)
                                // // 使用随机权重生成器
                                // ScoreFunctionBuilders.randomFunction() // 生成一个随机分数
                                //         .seed(System.currentTimeMillis()) // 使用当前时间戳作为种子，确保随机性
                                //         .setWeight(ID_BASE_WEIGHT) // 设置一个基础权重
                                //         .setField(FIELD_ID) // 设置一个随机字段，确保每次查询都是随机的
                                // 算分函数：基于 `price` 字段增加权重
                                // ScoreFunctionBuilders.fieldValueFactorFunction(FIELD_PRICE)
                                //         .modifier(FieldValueFactorFunction.Modifier.LOG1P) // 使用对数函数来调整加权方式
                                //         .factor(ID_BASE_WEIGHT) // 设置加权因子
                                //         .missing(0) // 如果价格字段为空，则默认为0
                        )
                }
        );

        // 将 function score 查询设置到搜索源中
        searchSourceBuilder.query(functionScoreQuery);

        //高亮设置
        HighlightBuilder highlightBuilder = new HighlightBuilder();
        highlightBuilder.preTags(HIGHLIGHT_PRE_TAG);
        highlightBuilder.postTags(HIGHLIGHT_POST_TAG);
        //设置高亮字段
        highlightBuilder.fields().add(new HighlightBuilder.Field(FIELD_NAME));
        searchSourceBuilder.highlighter(highlightBuilder);
        //请求搜索
        searchRequest.source(searchSourceBuilder);

        //聚合设置
        buildAggregation(searchRequest);
        SearchResponse searchResponse = null;
        try {
            searchResponse = client.search(searchRequest, RequestOptions.DEFAULT);
        } catch (IOException e) {
            e.printStackTrace();
            log.error("课程搜索异常：{}", e.getMessage());
            return new SearchPageResultDto<CourseIndex>(new ArrayList(), 0, 0, 0);
        }

        //结果集处理
        SearchHits hits = searchResponse.getHits();
        SearchHit[] searchHits = hits.getHits();
        //记录总数
        TotalHits totalHits = hits.getTotalHits();
        //数据列表
        List<CourseIndex> list = new ArrayList<>();

        for (SearchHit hit : searchHits) {

            String sourceAsString = hit.getSourceAsString();
            CourseIndex courseIndex = JSON.parseObject(sourceAsString, CourseIndex.class);

            //取出source
            //课程id
            Long id = courseIndex.getId();
            //取出名称
            String name = courseIndex.getName();
            //取出高亮字段内容
            Map<String, HighlightField> highlightFields = hit.getHighlightFields();
            if (highlightFields != null) {
                HighlightField nameField = highlightFields.get(FIELD_NAME);
                if (nameField != null) {
                    Text[] fragments = nameField.getFragments();
                    StringBuffer stringBuffer = new StringBuffer();
                    for (Text str : fragments) {
                        stringBuffer.append(str.string());
                    }
                    name = stringBuffer.toString();

                }
            }
            courseIndex.setId(id);
            courseIndex.setName(name);

            list.add(courseIndex);

        }
        SearchPageResultDto<CourseIndex> pageResult = new SearchPageResultDto<>(list, totalHits.value, pageNo, pageSize);

        return pageResult;
    }

}
