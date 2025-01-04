<template>
  <div>
    <div class="course-card">
      <div class="course-card-pic">
        <img class="course-card-pic-img" :src="pic" alt="课程封面图片">
      </div>

      <div class="course-card-left-top-tag" v-if="courseTag">{{courseTag}}</div>
      <div class="course-card-right-top-tag" v-if="isAd == '800001'">广告</div>

      <div class="course-card-main-desc">
        <div class="course-card-main-info">
          <div class="course-card-main-name" v-html="courseName"></div>
          <div class="course-card-main-organization" v-if="companyName">{{ companyName }}</div>
          <div class="course-card-main-teacher">{{ courseTeacher }}</div>
          <div class="course-card-main-add-people ">{{ coursePeople }}人参加</div>
        </div>
        <div class="course-card-price">
          <div v-if="coursePrice == 0" style="color: #00CC7E;">免费</div>
          <div v-else style="color: #FF7A3E;">¥{{ coursePrice }}</div>
        </div>
      </div>
    </div>

  </div>
</template>

<script lang="ts">
import {Component, Vue, Prop} from 'vue-property-decorator'
import Pagination from "@/components/pagination/index.vue";

@Component({
  name: "OneCourseCard"
})
export default class extends Vue {
  @Prop({ required: true }) private courseName!: string;
  @Prop({ required: true }) private companyName!: string;
  @Prop({ required: true }) private courseTeacher!: string;
  @Prop({ required: true }) private pic!: string;

  @Prop({ default: 0 }) private coursePrice!: number;
  @Prop({ default: '' }) private courseTag!: string;
  @Prop({ default: 0 }) private coursePeople!: number;
  @Prop({ default: "800001" }) private isAd!: string;

  // private courseName = '大学物理不挂科-1小时学完振动与波动学';
  // private coursePeople = 281794;
  // private courseOrg = '猴博士';
  // private courseTeacher = '猴博士爱讲课';
  // private courseTag = '大学先修课';
  // private courseFree = false;
  // private coursePrice = 39;
  // private pic = 'https://mooc-image.nosdn.127.net/1bfba2f4f8374f8983ed3057b878daff.png';
}
</script>


<style lang="scss" scoped>

.course-card {
  cursor: pointer;
  float: left;
  margin: 0 20px 20px 0;
  border-radius: 8px;
  -webkit-transition: all ease-in 0.2s;
  transition: all ease-in 0.2s;
  line-height: 0;
  position: relative;
  display: inline-block;
  width: 220px;
  height: 252px;
  background: #fff;
  font-family: PingFangSC-Regular, PingFang SC;
  font-size: 0;
  overflow: hidden;
}

.course-card > div {
  overflow: hidden;
}

.course-card:nth-child(5n) {
  margin-right: 0;
}

.course-card:hover {
  -webkit-box-shadow: 0 4px 16px 0 rgba(0, 0, 0, 0.12);
  box-shadow: 0 4px 16px 0 rgba(0, 0, 0, 0.12);
}

.course-card-left-top-tag {
  position: absolute;
  top: 0;
  left: 0;
  font-family: PingFangSC-Regular, PingFangSC;
  display: inline-block;
  height: 20px;
  line-height: 20px;
  font-size: 12px;
  padding: 0 6px;
  margin: 0 4px 8px 0;
  color: #fff;
  border-top-left-radius: 8px;
  border-bottom-right-radius: 8px;
  background: rgb(238, 176, 45);
}

.course-card-right-top-tag{
  position: absolute;
  top: 0;
  right: 0;
  font-family: PingFangSC-Regular, PingFangSC;
  display: inline-block;
  height: 20px;
  line-height: 20px;
  font-size: 12px;
  padding: 0 6px;
  color: #fff;
  //border-top-right-radius: 8px;
  //border-bottom-left-radius: 8px;
}

.course-card .course-card-pic {
  width: 100%;
  max-height: 126px;
  height: 126px;
  overflow: hidden;
  position: relative;
}

.course-card .course-card-pic-img {
  width: 100%;
  height: 100%;
  object-fit: cover;  /* 保证图片覆盖整个容器，保持比例 */
  object-position: 0% 50%; /* 图片位置：水平左对齐，垂直居中 */
}

.course-card .course-card-main-desc {
  position: relative;
  padding: 10px 12px;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  height: 126px;
  border-radius: 0 0 8px 8px;
}

.course-card .course-card-main-info {
  height: 94px;
}

.course-card .course-card-main-name {
  max-height: 36px;
  font-size: 14px;
  color: #333;
  font-weight: bold;
  line-height: 18px;
  overflow: hidden;
  text-overflow: ellipsis;
  display: -webkit-box;
  -webkit-line-clamp: 2;
  -webkit-box-orient: vertical;
}

.course-card .course-card-main-add-people {
  position: absolute;
  bottom: 12px;
  right: 14px;
  display: inline-block;
  font-size: 12px;
  min-width: 50px;
  height: 12px;
  line-height: 12px;
  color: #999;
}

.course-card .course-card-main-teacher {
  width: calc(100% - 56px);
  height: 12px;
  line-height: 12px;
  font-size: 12px;
  margin: 12px 0 0 0;
  color: #999;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}

.course-card .course-card-main-organization {
  width: 100%;
  height: 12px;
  line-height: 12px;
  font-size: 12px;
  margin-top: 8px;
  color: #666;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}

.course-card-price {
  font-family: PingFangSC-Regular, PingFangSC;
  position: relative;
  text-align: left;
  top: -8px;
  display: inline-block;
  font-size: 20px;
  height: 20px;
  line-height: 20px;
  font-weight: 600;
}
</style>
<style>
/* ES搜索后所需样式 */
.eslight {
  color: red;
}

</style>