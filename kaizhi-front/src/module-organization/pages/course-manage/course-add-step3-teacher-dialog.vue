<template>
  <el-dialog title="教师列表" :visible.sync="syncDialogVisible">
    <div style="padding: 0">
      <!-- 搜索栏 -->
      <div class="searcher">
        <el-input
            class="el-input"
            placeholder="教师名称"
            suffix-icon="el-icon-search"
            v-model="listQueryData.teacherName"
        />
      </div>

      <!-- 数据列表 -->
      <el-table
          class="dataList"
          v-loading="listLoading"
          :data="listData.items"
          border
          style="width: 100%"
          :header-cell-style="{textAlign: 'center'}"
      >
        <el-table-column prop="teacherName" label="教师名称" align="center" width="130"></el-table-column>
        <el-table-column prop="position" label="教师职位" align="center" width="200"></el-table-column>
        <el-table-column prop="introduction" label="教师简介" width="400"></el-table-column>
        <el-table-column label="教师照片" align="center" width="100">
          <template slot-scope="scope">
            <img :src="scope.row.photograph" :alt="scope.row.teacherName" width="90"/>
          </template>
        </el-table-column>
        <el-table-column label="操作" align="center">
          <template slot-scope="scope">
            <el-button type="text" @click="handleAdd(scope.row)">添加</el-button>
          </template>
        </el-table-column>
      </el-table>

      <!-- 翻页控制 -->
      <div class="dataList-pagination">
        <Pagination
            v-show="listData.counts > 0"
            :total="listData.counts"
            :page.sync="listQuery.pageNo"
            :limit.sync="listQuery.pageSize"
            @pagination="getList"
        />
      </div>

    </div>
  </el-dialog>
</template>

<style lang="scss" scoped>
// .form-dialog {
//   text-align: center;
//   min-height: 80px;
//   width: 90%;
// }
</style>

<script lang="ts">
import {Component, Prop, PropSync, Watch} from 'vue-property-decorator'
import {mixins} from 'vue-class-component'
import {getTeachersList, submitCourseTeacher} from '@/api/courses'
import Pagination from "@/components/pagination/index.vue";
import MixinTools from '@/utils/mixins.vue'
import {ITeacherDTO, ITeacherList} from "@/entity/teacher";
import { ICourseTeacherList } from '@/entity/course-add-teacher'

@Component({
  name: 'SaveCourseTeacherDialog',
  components: {
    Pagination
  }
})
export default class extends mixins(MixinTools) {
  @PropSync('dialogVisible', {type: Boolean, default: false})
  syncDialogVisible!: boolean

  @Prop({ type: Number })
  courseBaseId!: number

  // 查询
  private listData: ITeacherList = {} // 数据体
  private listLoading: boolean = false // 是否载入中

  // api params
  private listQuery = {
    pageNo: 1,
    pageSize: 10
  }
  // api post body
  private listQueryData = {
    teacherName: ''
  }

  // 业务函数
  private async getList() {
    this.listLoading = true
    this.listData = await getTeachersList(this.listQuery, this.listQueryData)
    this.listData.counts = Number(this.listData.counts)
    this.listLoading = false
  }

  // 生命周期 life
  created() {
    // this.getList();
  }

  // 添加
  private async handleAdd(data: ITeacherDTO) {
    try {
      const courseTeacherList= {
        courseId: this.courseBaseId,
        teacherId: data.id
      }
      console.log(courseTeacherList);
      await submitCourseTeacher(courseTeacherList)
      // 在添加完成后触发父组件的更新事件
      this.$emit('complete')
    } catch (error) {}
    this.syncDialogVisible = false // 设置为 true 显示对话框
  }

  // 监控 watch
  // 搜索栏
  @Watch('listQueryData', {deep: true, immediate: true})
  private watchListQueryData(newVal: string) {
    if (newVal == '') {
      return
    }
    this.getList()
  }

  // 翻页 pageSize
  @Watch('listQuery.pageSize', {immediate: true})
  private watchListQueryPageSize(newVal: number) {
    this.listQuery.pageNo = 1
  }
}
</script>
<style lang="scss" scoped>
.workspace .banner .btn-add {
  float: right;
}

.searcher {

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

.el-dialog .el-dialog__body{
  padding: 0 20px !important;
}
</style>
