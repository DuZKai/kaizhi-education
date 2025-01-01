<template>
  <div class="course-hot-class">
    <div class="one-course-card-top-name">
      <div class="one-course-card-top-main">
        <div class="one-course-card-top-blank"></div>
        <div class="one-course-card-top-main-left">
          {{ cardName }}
          <span class="one-course-card-top-main-right" v-if="topFlag">TOP50</span>
        </div>
      </div>
      <span class="one-course-card-top-right-grey">{{ boldName }}</span>
    </div>
    <div class="one-course-card-main">
      <el-carousel height="430px" :autoplay="false" :loop="false">
        <el-carousel-item v-for="item in chunk(courseItem, 5)" :key="item[0].courseId">
          <div class="one-course-card-container">
            <a :href=get_href_url(course.courseId) target="_blank" class="one-course-card" v-for="course in item" :key="course.courseId">
              <span class="one-course-number">{{ course.index }}</span>
              <img :src="course.image" alt="course image"/>
              <div class="one-course-desc">
                <p class="one-course-name">{{ course.name }}</p>
                <p class="one-course-blank"></p>
                <p class="one-course-people">{{ course.userCount }}人参加</p>
              </div>
            </a>
          </div>
        </el-carousel-item>
      </el-carousel>
    </div>
  </div>
</template>

<script lang="ts">
import {Component, Prop, Vue} from 'vue-property-decorator'

@Component({
  name: "RankingList"
})
export default class extends Vue {
  @Prop({required: true}) private cardName!: string;
  @Prop({default: true}) private topFlag!: boolean;
  @Prop({required: true}) private boldName!: string;
  @Prop({
    default: () =>
        [{
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
          }
        ]
  }) private courseItem!: { id: number, name: string, people: string, imageUrl: string }[];

  chunk(arr: any[], size: number) {
    return arr.reduce((acc, _, i) => (i % size ? acc[acc.length - 1].push(_) : acc.push([_])) && acc, []);
  }

  get_href_url(id: number) {
    return `${process.env.VUE_APP_CLIENT_PORTAL_URL}/course/` + id + '.html';

  }
}
</script>


<style lang="scss" scoped>

.course-hot-class {
  width: 387px;
  border-radius: 8px;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  background: rgba(255, 255, 255, 1);
  float: left;
  position: relative;
  height: 496px;
}


.one-course-card {
  margin-bottom: 8px;
  width: 387px;
  display: -ms-flexbox;
  display: flex;
  padding-left: 14px;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  position: relative;
  text-decoration:none; // 去掉下划线
  color: white; // 颜色变白
  outline:none; // 去点击后虚线框
}

.one-course-card-top-name {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  -ms-flex-pack: justify;
  justify-content: space-between;
  height: 68px;
  padding: 0 16px;
  border-top-left-radius: 8px;
  border-top-right-radius: 8px;
  /*background: -webkit-gradient(linear, left top, left bottom, from(#fcf8ed), color-stop(#fefbf5), to(#fff));*/
  background: linear-gradient(to bottom, #fcf8ed, #fefbf5, #fff);
}

.one-course-card-top-name .one-course-card-top-main {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: center;
  align-items: center;
  color: #d1802b;
}

.one-course-card-top-name .one-course-card-top-main .one-course-card-top-blank {
  width: 20px;
  height: 20px;
  margin-right: 4px;
  background: url(http://edu-image.nosdn.127.net/3e29dfc….jpg?imageView&quality=100);
  background-size: 100% 100%;
}

.one-course-card-top-name .one-course-card-top-main .one-course-card-top-main-left {
  display: -ms-flexbox;
  display: flex;
  -ms-flex-align: end;
  align-items: flex-end;
  font-size: 18px;
  font-weight: 600;
}

.one-course-card-top-name .one-course-card-top-main .one-course-card-top-main-left .one-course-card-top-main-right {
  margin-left: 8px;
  font-size: 14px;
  font-weight: 400;
}

.one-course-card-top-name .one-course-card-top-right-grey {
  font-size: 18px;
  font-weight: bold;
  font-style: italic;
  color: #e2e2e2;
}

.one-course-card-main {
  width: 387px;
  overflow: hidden;
  cursor: pointer;
  position: relative;
  transition: left .3s ease-in;
  display: flex;
  -ms-flex-direction: column;
  flex-direction: column;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
  -ms-flex-pack: start;
  justify-content: flex-start;
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

.one-course-card img {
  width: 135px;
  height: 76px;
}

.one-course-number {
  font-size: 20px;
  color: #b8b8b8;
  font-family: Helvetica-BoldOblique, Helvetica;
  width: 20px;
  margin-left: -10px;
  margin-right: 11px;
  text-align: right;
}


.one-course-desc {
  color: #666;
  padding-left: 14px;
}

.one-course-name {
  font-size: 14px;
  font-weight: 500;
  line-height: 20px;
  color: #333;
  margin-bottom: 3px;
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-box-orient: vertical;
  -webkit-line-clamp: 2;
  width: 190px;
}

.one-course-blank {
  color: #666;
  font-size: 12px;
  line-height: 16px;
}

.one-course-people {
  font-size: 12px;
  color: #999;
  line-height: 17px;
  position: absolute;
  left: 185px;
  bottom: 0;
}

.el-carousel__indicators {
  display: none;
}
</style>