<template>
  <div class="index-page">
    <div class="one-module">
      <div class="course-top-name">
        <div class="course-top-name-other-class">
          <a class="common-course-title">计算机</a>
          <span class="choose-now">最新好课推荐</span>
          <span class="">计算机基础</span>
          <span class="">程序设计</span>
          <span class="">考试/考研</span>
        </div>
      </div>
      <div class="all-class-show">

        <OneCourseCard
            v-for="item in searchCourse.courseItem"
            :key="item.id"
            :courseName="item.courseName"
            :coursePeople="item.coursePeople"
            :courseOrg="item.courseOrg"
            :courseTeacher="item.courseTeacher"
            :courseTag="item.courseTag"
            :courseFree="item.courseFree"
            :coursePrice="item.coursePrice"
            :courseImageUrl="item.courseImageUrl"
        />
      </div>
      <div class="dataList-pagination">
        <Pagination
            :class="'all-course-page-style'"
            v-show="searchCourse.counts > 0"
            :total="searchCourse.counts"
            :page.sync="listQuery.pageNo"
            :limit.sync="listQuery.pageSize"
            @pagination="getSearchList"
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
import {Component, Vue} from 'vue-property-decorator'
// import { Route } from 'vue-router'
import RankingList from './components/ranking-list.vue'
import OneCourseCard from './components/one-course-card.vue'
import Pagination from "@/components/pagination/index.vue";
import {hotTop50} from "@/api/rank";
import {ICourseInfo} from "@/entity/rank-page-link";
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
  private hotCourse = {
    cardName: "热门排行",
    topFlag: true,
    boldName: "POPULAR COURSES",
    courseItem: [] as ICourseInfo[]
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

  private searchCourse = {
    counts: 6,
    courseItem: [
      {
        id: 1,
        courseName: '大学物理不挂科-1小时学完振动与波动学',
        coursePeople: 281794,
        courseOrg: '猴博士',
        courseTeacher: '猴博士爱讲课',
        courseTag: '大学先修课',
        courseFree: true,
        coursePrice: 0,
        courseImageUrl: 'https://mooc-image.nosdn.127.net/1bfba2f4f8374f8983ed3057b878daff.png'
      }, {
        id: 2,
        courseName: '大学物理不挂科-1小时学完振动与波动学',
        coursePeople: 281794,
        courseOrg: '猴博士',
        courseTeacher: '猴博士爱讲课',
        courseTag: '大学先修课',
        courseFree: false,
        coursePrice: 39,
        courseImageUrl: 'https://mooc-image.nosdn.127.net/1bfba2f4f8374f8983ed3057b878daff.png'
      }, {
        id: 3,
        courseName: '大学物理不挂科-1小时学完振动与波动学',
        coursePeople: 281794,
        courseOrg: '猴博士',
        courseTeacher: '猴博士爱讲课',
        courseTag: '大学先修课',
        courseFree: false,
        coursePrice: 39,
        courseImageUrl: 'https://mooc-image.nosdn.127.net/1bfba2f4f8374f8983ed3057b878daff.png'
      }, {
        id: 4,
        courseName: '大学物理不挂科-1小时学完振动与波动学',
        coursePeople: 281794,
        courseOrg: '猴博士',
        courseTeacher: '猴博士爱讲课',
        courseTag: '大学先修课',
        courseFree: false,
        coursePrice: 39,
        courseImageUrl: 'https://mooc-image.nosdn.127.net/1bfba2f4f8374f8983ed3057b878daff.png'
      }, {
        id: 5,
        courseName: '大学物理不挂科-1小时学完振动与波动学',
        coursePeople: 281794,
        courseOrg: '猴博士',
        courseTeacher: '猴博士爱讲课',
        courseTag: '大学先修课',
        courseFree: false,
        coursePrice: 39,
        courseImageUrl: 'https://mooc-image.nosdn.127.net/1bfba2f4f8374f8983ed3057b878daff.png'
      }, {
        id: 6,
        courseName: '大学物理不挂科-1小时学完振动与波动学',
        coursePeople: 281794,
        courseTeacher: '猴博士爱讲课',
        courseTag: '大学先修课',
        courseFree: false,
        coursePrice: 39,
        courseImageUrl: 'https://mooc-image.nosdn.127.net/1bfba2f4f8374f8983ed3057b878daff.png'
      }
    ]
  }

  private listQuery = {
    pageNo: 1,
    pageSize: 10
  }

  /**
   * 生命周期钩子
   */
  created() {
    this.getHotTop50()
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

  private getSearchList(){
    console.log('getSearchList')
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

.all-course-page-style{
  background: #fff;
  padding-left: 16px;
  padding-right: 16px;
  padding-top: 0;
  padding-bottom: 0;
  background: none;
}
</style>
