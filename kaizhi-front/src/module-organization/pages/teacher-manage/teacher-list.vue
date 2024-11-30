<template>
  <div class="workspace">
    <div class="banner">
      <span class="primary-title">教师管理</span>
      <el-button
        type="primary"
        size="medium"
        class="btn-add el-button"
        @click="handleAddTeacher"
      >+添加教师</el-button>
    </div>

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
          <img :src="scope.row.photograph" :alt="scope.row.teacherName" width="90" />
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center">
        <template slot-scope="scope">
          <el-button type="text" @click="handleEdit(scope.row)">编辑</el-button>
          <el-button type="text" @click="handleDelete(scope.row)">删除</el-button>
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

    <!-- 类型提示框 -->
    <SaveTeacherDialog
        ref="dialog"
        :dialogVisible.sync="isDialogVisible"
        :teacherData="teacherData"
        @complete="getList"
    />
  </div>
</template>

<script lang="ts">
import { Component, Prop, Watch, Vue } from 'vue-property-decorator'
import { mixins } from 'vue-class-component'
import Pagination from '@/components/pagination/index.vue'
import {
  deleteTeacher, getTeachersList
} from '@/api/courses' // api interface 课程
import { ICourseBaseDTO } from '@/entity/course-page-list'
import MixinTools from '@/utils/mixins.vue'
import SaveTeacherDialog from './components/teacher-add.vue'
import {ITeacherList} from "@/entity/teacher";

@Component({
  name: 'TeacherList',
  components: {
    Pagination,
    SaveTeacherDialog
  }
})
export default class extends mixins(MixinTools) {
  // 查询
  private listData: ITeacherList[] = [] // 数据体
  private listLoading: boolean = false // 是否载入中
  private isDialogVisible: boolean = false

  // api params
  private listQuery = {
    pageNo: 1,
    pageSize: 10
  }
  // api post body
  private listQueryData = {
    teacherName: ''
  }

  private teacherData: ITeacherList = {
    teacherName: '',
    position: '',
    introduction: ''
  }

  // 业务函数
  private async getList() {
    this.listLoading = true
    this.listData = await getTeachersList(this.listQuery, this.listQueryData)
    this.listLoading = false
  }

  // 生命周期 life
  created() {
    // this.getList();
  }

  // 添加
  private handleAdd() {
    this.teacherData = {
      teacherName: '',
      position: '',
      introduction: ''
    }
    this.isDialogVisible = true
  }

  private handleEdit(index: number, row: ICourseBaseDTO) {
    this.teacherData = data
    this.isDialogVisible = true
  }
  // 删除
  private async handleDelete(data: ITeacherList) {
    try {
      await this.showDeleteConfirm()
      await deleteTeacher(data.id)
      await this.getList()
    } catch (error) {}
  }

  private handleAddTeacher() {
    this.isDialogVisible = true
  }

  // 监控 watch
  // 搜索栏
  @Watch('listQueryData', { deep: true, immediate: true })
  private watchListQueryData(newVal: string) {
    if (newVal == '') {
      return
    }
    this.getList()
  }
  // 翻页 pageSize
  @Watch('listQuery.pageSize', { immediate: true })
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
</style>
