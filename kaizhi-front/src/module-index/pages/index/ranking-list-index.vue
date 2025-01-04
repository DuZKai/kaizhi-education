<template>
  <div class="index-page">
    <div class="one-module">
      <div class="course-top-name">
        <div class="course-top-name-other-class">
          <a class="common-course-title">计算机</a>
          <span class="choose-now">最新好课推荐</span>
        </div>
        <div class="search-range-right">
          <el-form :inline="true" :model="searchParams">
            <el-form-item label="关键字">
              <el-input
                  placeholder="请输入搜索内容"
                  v-model="searchParams.keywords"
                  @change="searchPage"
                  clearable
              />
            </el-form-item>

            <el-form-item label="分类">
              <el-cascader
                  v-if="courseCategory.length > 0"
                  v-model="searchParams.category"
                  :options="courseCategory"
                  :props="{ checkStrictly: true }"
                  @change="searchPage"
                  clearable>
              </el-cascader>
            </el-form-item>
            <el-form-item label="难度等级">
              <el-select v-model="searchParams.grade" clearable placeholder="全部难度" @change="searchPage">
                <el-option
                    v-for="item in gradeList"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value">
                </el-option>
              </el-select>
            </el-form-item>
            <el-form-item label="排序">
              <el-select v-model="searchParams.sortType" clearable placeholder="默认排序"
                         @change="searchPage">
                <el-option
                    v-for="item in priceSortList"
                    :key="item.value"
                    :label="item.label"
                    :value="item.value">
                </el-option>
              </el-select>
            </el-form-item>
          </el-form>
        </div>


      </div>
      <div class="all-class-show" v-if="searchCourse.counts != 0">
        <a :href=get_href_url(item.id) target="_blank" class="one-course-card-a" v-for="item in searchCourse.courseItem"
           :key="item.id">
          <OneCourseCard
              :courseName="item.name"
              :coursePeople="item.coursePeople"
              :companyName="item.companyName"
              :courseTeacher="item.courseTeacher"
              :courseTag="item.tags"
              :coursePrice="item.price"
              :pic="item.pic"
              :isAd="item.isAd"
          />
        </a>
      </div>
      <div class="dataList-pagination">
        <Pagination
            :class="'all-course-page-style'"
            v-show="searchCourse.counts > 0"
            :total="searchCourse.counts"
            :page.sync="listQuery.pageNo"
            :limit.sync="listQuery.pageSize"
            @pagination="searchPage"
        />
      </div>
    </div>
    <div class="one-module">
      <div class="course-hot-title">课程排行</div>
      <div class="ranking-list-all">
        <RankingList
            :cardName="hotCourse.cardName"
            :topFlag="hotCourse.topFlag"
            :boldName="hotCourse.boldName"
            :courseItem="hotCourse.courseItem"/>

        <RankingList
            :cardName="newCourse.cardName"
            :topFlag="newCourse.topFlag"
            :boldName="newCourse.boldName"
            :courseItem="newCourse.courseItem"/>
        <RankingList
            :cardName="fiveStarCourse.cardName"
            :topFlag="fiveStarCourse.topFlag"
            :boldName="fiveStarCourse.boldName"
            :courseItem="fiveStarCourse.courseItem"/>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import {Component} from 'vue-property-decorator'
// import { Route } from 'vue-router'
import RankingList from './components/ranking-list.vue'
import OneCourseCard from './components/one-course-card.vue'
import Pagination from "@/components/pagination/index.vue";
import {getCategoryList, getCourseUserCount, hotTop50, searchCourseList} from "@/api/rank";
import {ICourseSearchDTO, IHotCourseInfo, ITag} from "@/entity/rank-page-link";
import {mixins} from "vue-class-component";
import MixinTools from "@/utils/mixins.vue";

@Component({
  name: 'RankingListIndex',
  components: {
    Pagination,
    RankingList,
    OneCourseCard
  }
})

export default class extends mixins(MixinTools) {
  private searchParams = {
    keywords: '',
    category: '',
    grade: '',
    sortType: '',
  };

  private courseCategory = [] as ITag[];
  private priceSortList = [
    {
      value: '',
      label: '默认排序'
    }, {
      value: '1',
      label: '价格升序'
    }, {
      value: '2',
      label: '价格降序'
    }];
  private gradeList = [
    {
      value: '',
      label: '全部难度'
    }, {
      value: '204001',
      label: '初级'
    }, {
      value: '204002',
      label: '中级'
    }, {
      value: '204003',
      label: '高级'
    }]


  private hotCourse = {
    cardName: "热门排行",
    topFlag: true,
    boldName: "POPULAR COURSES",
    courseItem: [] as IHotCourseInfo[]
  };

  private newCourse = {
    cardName: "新课排行",
    topFlag: false,
    boldName: "NEW COURSES",
    courseItem: [
      {
        index: 1,
        name: '大学物理不挂科-1小时学完振动与波动学',
        userCount: '281794',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        index: 2,
        name: '数据科学与机器学习入门',
        userCount: '1200',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        index: 3,
        name: '大学物理不挂科-1小时学完振动与波动学',
        userCount: '281794',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        index: 4,
        name: '数据科学与机器学习入门',
        userCount: '1200',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        index: 5,
        name: '数据科学与机器学习入门',
        userCount: '1200',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        index: 6,
        name: '大学物理不挂科-1小时学完振动与波动学',
        userCount: '281794',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        index: 7,
        name: '数据科学与机器学习入门',
        userCount: '1200',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        index: 8,
        name: '大学物理不挂科-1小时学完振动与波动学',
        userCount: '281794',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        index: 9,
        name: '数据科学与机器学习入门',
        userCount: '1200',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        index: 10,
        name: '数据科学与机器学习入门',
        userCount: '1200',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      // 这里可以添加更多课程项
    ]
  }

  private fiveStarCourse = {
    cardName: "五星评价",
    topFlag: true,
    boldName: "FIVE-STAR",
    courseItem: [
      {
        index: 1,
        name: '大学物理不挂科-1小时学完振动与波动学',
        userCount: '281794',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        index: 2,
        name: '数据科学与机器学习入门',
        userCount: '1200',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        index: 3,
        name: '大学物理不挂科-1小时学完振动与波动学',
        userCount: '281794',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        index: 4,
        name: '数据科学与机器学习入门',
        userCount: '1200',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        index: 5,
        name: '数据科学与机器学习入门',
        userCount: '1200',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        index: 6,
        name: '大学物理不挂科-1小时学完振动与波动学',
        userCount: '281794',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        index: 7,
        name: '数据科学与机器学习入门',
        userCount: '1200',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        index: 8,
        name: '大学物理不挂科-1小时学完振动与波动学',
        userCount: '281794',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        index: 9,
        name: '数据科学与机器学习入门',
        userCount: '1200',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        index: 10,
        name: '数据科学与机器学习入门',
        userCount: '1200',
        image: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      // 这里可以添加更多课程项
    ]
  }

  private searchCourse: {
    counts: number;
    courseItem: ICourseSearchDTO[];
  } = {
    counts: 0,
    courseItem: []
  }

  private listQuery = {
    pageNo: 1,
    pageSize: 10
  }

  /**
   * 生命周期钩子
   */
  created() {
    this.getCategoryList()
    this.getHotTop50()
    this.searchPage()
  }

  /**
   * 初始化
   */
  private async getHotTop50() {
    this.hotCourse.courseItem = await hotTop50();
    this.hotCourse.courseItem.forEach(item => {
      item.image = `${process.env.VUE_APP_SERVER_PICSERVER_URL}` + item.image
    })
  }

  private async getCategoryList() {
    this.courseCategory = await getCategoryList();
  }

  private async searchPage() {
    var mt, st;
    if (this.searchParams.category === "") {
      mt = "";
      st = "";
    } else {
      if (this.searchParams.category.length === 1) {
        mt = this.searchParams.category[0];
        st = "";
      } else if (this.searchParams.category.length === 2) {
        mt = this.searchParams.category[0];
        st = this.searchParams.category[1];
      }
    }
    var sentSearchParams = {
      keywords: this.searchParams.keywords,
      mt: mt,
      st: st,
      grade: this.searchParams.grade,
      sortType: this.searchParams.sortType
    }

    const res = await searchCourseList(this.listQuery.pageNo, this.listQuery.pageSize, sentSearchParams);
    const userCounts = await getCourseUserCount();

    this.searchCourse.courseItem = res.items as ICourseSearchDTO[];
    this.searchCourse.counts = res.counts as number;
    this.searchCourse.courseItem.forEach(item => {
      item.pic = `${process.env.VUE_APP_SERVER_PICSERVER_URL}` + item.pic
      const course = userCounts.find(course => course.courseId === item.id);
      if (course) {
        item.coursePeople = course.userCount;
      } else {
        item.coursePeople = 0;
      }
      if (item.teacherNames) {
        try {
          var teacherNamesList = JSON.parse(item.teacherNames);
          if (teacherNamesList.length > 1) {
            item.courseTeacher = teacherNamesList.join('，');
          } else if (teacherNamesList.length === 1) {
            item.courseTeacher = teacherNamesList[0];
          }

        } catch (error) {
          console.error("无法解析 teacherNames 字符串", error);
          item.courseTeacher = "";
        }
      } else {
        item.courseTeacher = "";
      }
    })

  }

  private get_href_url(id: number) {
    return `${process.env.VUE_APP_CLIENT_PORTAL_URL}/course/` + id + '.html';
  }

}
</script>

<style lang="scss" scoped>
.index-page {
  background-color: #f4f5f7;
  margin-top: 16px;
  width: 1200px;

  min-height: 550px;
}

.one-module {
  min-height: 395px;
  margin-top: 10px;
  margin-bottom: 32px;
}

.course-hot-title {
  color: #333;
  font-size: 24px;
  font-weight: 500;
  margin-bottom: 20px;
}

.common-course-title {
  color: #333;
  font-size: 24px;
  font-weight: 500;
  margin-right: 40px;
}

.course-top-name {
  display: -ms-flexbox;
  display: flex;
  width: 100%;
  -ms-flex-pack: justify;
  justify-content: space-between;
  line-height: 34px;
}

.course-top-name .course-top-name-other-class {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-pack: center;
  justify-content: center;
}

.course-top-name .course-top-name-other-class span {
  height: 34px;
  color: #666;
  display: inline-block;
  font-size: 14px;
  cursor: pointer;
  margin-right: 32px;
}

.course-top-name .course-top-name-other-class span.choose-now {
  color: #00CC7E;
  border-bottom: 2px solid #00CC7E;
}

.all-class-show {
  min-height: 200px;
  overflow: hidden;
  padding-top: 24px;
  //margin-bottom: 32px;
}

.ranking-list-all {
  display: flex;
  justify-content: space-between;
}

.dataList-pagination {
  text-align: center;
  width: 100%;
}

.all-course-page-style {
  background: #fff;
  padding-left: 16px;
  padding-right: 16px;
  padding-top: 0;
  padding-bottom: 0;
  background: none;
}

.el-form-item {
  margin-bottom: 0;
}

.search-range-right {
  display: flex;
  flex-direction: column; /* 设置主轴为垂直方向 */
  align-items: center; /* 水平居中 */
  justify-content: center; /* 垂直居中 */
  padding-top: 10px;
  padding-right: 10px;
}

.one-course-card-a {
  text-decoration: none; // 去掉下划线
  color: white; // 颜色变白
  outline: none; // 去点击后虚线框
}

::v-deep .search-range-right .el-input {
  width: 170px;
}
</style>
