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
                    :precision="2"
                    :value="value2"
                    :title="title"
                ></el-statistic>
              </div>
            </el-col>
            <el-col :span="6">
              <div>
                <el-statistic title="男女比">
                  <template slot="formatter">
                    456/2
                  </template>
                </el-statistic>
              </div>
            </el-col>
            <el-col :span="6">
              <div>
                <el-statistic
                    group-separator=","
                    :precision="2"
                    decimal-separator="."
                    :value="value1"
                    :title="title"
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
                <el-statistic :value="like ? 521 : 520" title="Feedback">
                  <template slot="suffix">
              <span @click="like = !like" class="like">
                <i
                    class="el-icon-star-on"
                    style="color:red"
                    v-show="!!like"
                ></i>
                <i class="el-icon-star-off" v-show="!like"></i>
              </span>
                  </template>
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

@Component({
  components: {
    Pagination
  }
})
export default class InfoList extends Vue {
  private UV_num: number = 0

  data() {
    return {
      like: true,
      value1: 4154.564,
      value2: 1314,
      title: "增长人数",
    };
  }

  private async getUV() {
    // this.listLoading = true
    // this.UV_num = await getWorkRecordPageList(
    //     this.listQuery,
    //     this.listQueryData
    // )
    // this.listLoading = false
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

