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
            v-for="item in searchCourse"
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
        <!--        <OneCourseCard></OneCourseCard>-->
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

@Component({
  components: {
    Pagination,
    RankingList,
    OneCourseCard
  }
})
export default class RankingListIndex extends Vue {
  hotCourse = {
    cardName: "热门排行",
    topFlag: true,
    boldName: "POPULAR COURSES",
    courseItem: [
      {
        id: 1,
        name: '大学物理不挂科-1小时学完振动与波动学',
        people: '281794',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 2,
        name: '数据科学与机器学习入门',
        people: '1200',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 3,
        name: '大学物理不挂科-1小时学完振动与波动学',
        people: '281794',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 4,
        name: '数据科学与机器学习入门',
        people: '1200',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 5,
        name: '数据科学与机器学习入门',
        people: '1200',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 6,
        name: '大学物理不挂科-1小时学完振动与波动学',
        people: '281794',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 7,
        name: '数据科学与机器学习入门',
        people: '1200',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 8,
        name: '大学物理不挂科-1小时学完振动与波动学',
        people: '281794',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 9,
        name: '数据科学与机器学习入门',
        people: '1200',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 10,
        name: '数据科学与机器学习入门',
        people: '1200',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      // 这里可以添加更多课程项
    ]
  };

  newCourse = {
    cardName: "新课排行",
    topFlag: false,
    boldName: "NEW COURSES",
    courseItem: [
      {
        id: 1,
        name: '大学物理不挂科-1小时学完振动与波动学',
        people: '281794',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 2,
        name: '数据科学与机器学习入门',
        people: '1200',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 3,
        name: '大学物理不挂科-1小时学完振动与波动学',
        people: '281794',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 4,
        name: '数据科学与机器学习入门',
        people: '1200',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 5,
        name: '数据科学与机器学习入门',
        people: '1200',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 6,
        name: '大学物理不挂科-1小时学完振动与波动学',
        people: '281794',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 7,
        name: '数据科学与机器学习入门',
        people: '1200',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 8,
        name: '大学物理不挂科-1小时学完振动与波动学',
        people: '281794',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 9,
        name: '数据科学与机器学习入门',
        people: '1200',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 10,
        name: '数据科学与机器学习入门',
        people: '1200',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      // 这里可以添加更多课程项
    ]
  }

  fiveStarCourse = {
    cardName: "五星评价",
    topFlag: true,
    boldName: "FIVE-STAR",
    courseItem: [
      {
        id: 1,
        name: '大学物理不挂科-1小时学完振动与波动学',
        people: '281794',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 2,
        name: '数据科学与机器学习入门',
        people: '1200',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 3,
        name: '大学物理不挂科-1小时学完振动与波动学',
        people: '281794',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 4,
        name: '数据科学与机器学习入门',
        people: '1200',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 5,
        name: '数据科学与机器学习入门',
        people: '1200',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 6,
        name: '大学物理不挂科-1小时学完振动与波动学',
        people: '281794',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 7,
        name: '数据科学与机器学习入门',
        people: '1200',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 8,
        name: '大学物理不挂科-1小时学完振动与波动学',
        people: '281794',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 9,
        name: '数据科学与机器学习入门',
        people: '1200',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      {
        id: 10,
        name: '数据科学与机器学习入门',
        people: '1200',
        imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
      },
      // 这里可以添加更多课程项
    ]
  }

  searchCourse = [{
    id: 1,
    courseName: '大学物理不挂科-1小时学完振动与波动学',
    coursePeople: 281794,
    courseOrg: '猴博士',
    courseTeacher: '猴博士爱讲课',
    courseTag: '大学先修课',
    courseFree: true,
    coursePrice: 0,
    courseImageUrl: 'https://mooc-image.nosdn.127.net/1bfba2f4f8374f8983ed3057b878daff.png'
  },{
    id: 2,
    courseName: '大学物理不挂科-1小时学完振动与波动学',
    coursePeople: 281794,
    courseOrg: '猴博士',
    courseTeacher: '猴博士爱讲课',
    courseTag: '大学先修课',
    courseFree: false,
    coursePrice: 39,
    courseImageUrl: 'https://mooc-image.nosdn.127.net/1bfba2f4f8374f8983ed3057b878daff.png'
  },{
    id: 3,
    courseName: '大学物理不挂科-1小时学完振动与波动学',
    coursePeople: 281794,
    courseOrg: '猴博士',
    courseTeacher: '猴博士爱讲课',
    courseTag: '大学先修课',
    courseFree: false,
    coursePrice: 39,
    courseImageUrl: 'https://mooc-image.nosdn.127.net/1bfba2f4f8374f8983ed3057b878daff.png'
  },{
    id: 4,
    courseName: '大学物理不挂科-1小时学完振动与波动学',
    coursePeople: 281794,
    courseOrg: '猴博士',
    courseTeacher: '猴博士爱讲课',
    courseTag: '大学先修课',
    courseFree: false,
    coursePrice: 39,
    courseImageUrl: 'https://mooc-image.nosdn.127.net/1bfba2f4f8374f8983ed3057b878daff.png'
  },{
    id: 5,
    courseName: '大学物理不挂科-1小时学完振动与波动学',
    coursePeople: 281794,
    courseOrg: '猴博士',
    courseTeacher: '猴博士爱讲课',
    courseTag: '大学先修课',
    courseFree: false,
    coursePrice: 39,
    courseImageUrl: 'https://mooc-image.nosdn.127.net/1bfba2f4f8374f8983ed3057b878daff.png'
  },{
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
  // /**
  //  * 生命周期钩子
  //  */
  // created() {
  //   this.init()
  // }
  //
  // /**
  //  * 初始化
  //  */
  // private init() {
  //   const hotCourse = {
  //     cardName: "热门排行",
  //     topFlag: true,
  //     boldName: "POPULAR COURSES",
  //     courseItem: [
  //       {
  //         id: 1,
  //         name: '大学物理不挂科-1小时学完振动与波动学',
  //         people: '281794',
  //         imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
  //       },
  //       {
  //         id: 2,
  //         name: '数据科学与机器学习入门',
  //         people: '1200',
  //         imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
  //       },
  //       {
  //         id: 3,
  //         name: '大学物理不挂科-1小时学完振动与波动学',
  //         people: '281794',
  //         imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
  //       },
  //       {
  //         id: 4,
  //         name: '数据科学与机器学习入门',
  //         people: '1200',
  //         imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
  //       },
  //       {
  //         id: 5,
  //         name: '数据科学与机器学习入门',
  //         people: '1200',
  //         imageUrl: 'https://mooc-image.nosdn.127.net/d135fb7f32ce42049f94eb79627505b3.png'
  //       },
  //       // 这里可以添加更多课程项
  //     ]
  //   };
  // }

}
</script>

<style lang="scss" scoped>
.index-page{
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
  margin-bottom: 32px;
}

.ranking-list-all {
  display: flex;
  justify-content: space-between;
}
</style>
