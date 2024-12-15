<template>
  <div class="course-list portal-content">
    <div class="workspace">
      <div class="banner">

        <span class="primary-title">信息展示</span>
        <div class="tag-group">
          <el-row :gutter="20">
            <el-col :span="6">
              <div>
                <el-statistic
                    group-separator=","
                    :value="UV_num"
                    title="当日登录人数"
                ></el-statistic>
              </div>
            </el-col>
            <el-col :span="6">
              <div>
                <el-statistic
                    group-separator=","
                    decimal-separator="."
                    :value="all_num"
                    title="总人数"
                >
                  <template slot="prefix">
                    <i class="el-icon-s-flag" style="color: red"></i>
                  </template>
                  <template slot="suffix">
                    <i class="el-icon-s-flag" style="color: blue"></i>
                  </template>
                </el-statistic>
              </div>
            </el-col>
            <el-col :span="6">
              <div>
                <el-statistic title="男女比">
                  <template slot="formatter">
                    {{ man }} / {{woman }}
                  </template>
                </el-statistic>
              </div>
            </el-col>
            <!-- TODO: 好评信息显示-->
            <el-col :span="6">
              <div>
                <el-statistic :value="good_rate"
                              :precision="2"
                              title="好评率">
                  <template slot="prefix">
                    <i
                        class="el-icon-star-on"
                        style="color:red"
                    ></i>
                  </template>
                  <template slot="suffix">%</template>
                </el-statistic>
              </div>
            </el-col>
          </el-row>
        </div>
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import { Component, Vue, Watch } from 'vue-property-decorator'
import Pagination from '@/components/pagination/index.vue'
import {getinfoAll, getinfoMan, getinfoUV, getinfoWoman} from "@/api/summary-info";

@Component({
  components: {
    Pagination
  }
})
export default class InfoList extends Vue {
  private UV_num: number = 0
  private all_num: number = 0
  private man: number = 0
  private woman: number = 0
  private good_rate = 89.14

  // 生命周期 life
  created() {
    this.getUV();
    this.getMan();
    this.getWoman();
    this.getAllNum();
  }


  private async getUV() {
    this.UV_num = await getinfoUV();
  }

  private async getMan() {
    this.man = await getinfoMan();
  }

  private async getWoman() {
    this.woman = await getinfoWoman();
  }

  private async getAllNum() {
    this.all_num = await getinfoAll();
  }
}
</script>

<style lang="scss" scoped>
.course-list {
  .nav-bar {
    margin-top: 16px;
  }

  .workspace .banner .btn-add {
    float: right;
  }

  .searcher {
    margin-top: 16px;

    div {
      width: 218px;
      margin-right: 10px;
    }
  }

  .dataList {
    margin-top: 16px;
  }

  .dataList-pagination {
    text-align: center;
    width: 100%;
  }
}
</style>

