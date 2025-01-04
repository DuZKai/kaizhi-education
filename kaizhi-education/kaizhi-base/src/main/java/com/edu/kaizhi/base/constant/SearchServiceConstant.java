package com.edu.kaizhi.base.constant;

public class SearchServiceConstant {

    public static final String FIELD_NAME = "name";
    public static final String FIELD_DESCRIPTION = "description";
    public static final String FIELD_MT_NAME = "mtName";
    public static final String FIELD_ST_NAME = "stName";
    public static final String FIELD_GRADE = "grade";
    public static final String FIELD_IS_AD = "isAd";
    public static final String FIELD_ID = "id";
    public static final String MT_AGGREGATION = "mtAgg";
    public static final String ST_AGGREGATION = "stAgg";
    public static final String FIELD_PRICE = "price";

    public static final String FIELD_MT_KEYWORD = "mt.keyword";
    public static final String FIELD_ST_KEYWORD = "st.keyword";

    public static final String FIELD_MT_NAME_KEYWORD = "mtName.keyword";
    public static final String FIELD_ST_NAME_KEYWORD = "stName.keyword";

    public static final String HIGHLIGHT_PRE_TAG = "<font class='eslight'>";
    public static final String HIGHLIGHT_POST_TAG = "</font>";

    public static final int Aggregation_SIZE = 100;

    public static final String MINIMUM_SHOULD_MATCH_PERCENTAGE = "70%";  // 最小匹配度
    public static final float NAME_FIELD_BOOST = 10.0f;
    public static final float ID_BASE_WEIGHT = 1.0f;
}
