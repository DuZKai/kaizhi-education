<template>
  <div class="workspace" style="background-color: #f4f5f7;">
    <div class="course-hot-title">课程排行</div>
    <div class="ranking-list-all">
      <RankingList
          :cardName="hotCourse.cardName"
          :topFlag="hotCourse.topFlag"
          :boldName="hotCourse.boldName"
          :courseItem="hotCourse.courseItem" />

      <RankingList
          :cardName="newCourse.cardName"
          :topFlag="newCourse.topFlag"
          :boldName="newCourse.boldName"
          :courseItem="newCourse.courseItem" />
      <RankingList
          :cardName="fiveStarCourse.cardName"
          :topFlag="fiveStarCourse.topFlag"
          :boldName="fiveStarCourse.boldName"
          :courseItem="fiveStarCourse.courseItem" />
    </div>
  </div>
</template>

<script lang="ts">
import {Component, Vue, Watch} from 'vue-property-decorator'
// import { Route } from 'vue-router'
import RankingList from './components/ranking-list.vue'
import Pagination from "@/components/pagination/index.vue";

@Component({
  components: {
    Pagination,
    RankingList
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

.course-hot-title {
  color: #333;
  font-size: 24px;
  font-weight: 500;
  margin-bottom: 20px;
}

.ranking-list-all {
  display: flex;
  justify-content: space-between;
}
</style>
