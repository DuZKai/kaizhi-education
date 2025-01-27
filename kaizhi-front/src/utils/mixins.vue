
<script lang="ts">
import { Component, Prop, PropSync, Watch, Vue } from 'vue-property-decorator'

@Component({
  name: 'Mixin'
})
export default class extends Vue {
  // 删除确认
  public async showDeleteConfirm(msg: string = '') {
    if(msg == null || msg == ''){
      msg = '此操作将永久删除, 是否继续?'
    }
    return await this.$confirm(msg, '提示', {
      confirmButtonText: '确定',
      cancelButtonText: '取消',
      type: 'warning',
      center: true
    })
  }

  // Confirm
  public async showConfirm(msg: string) {
    return await this.$confirm(msg, '提示', {
      confirmButtonText: '确定',
      cancelButtonText: '取消',
      type: 'warning',
      center: true
    })
  }

  // 显示提示框
  public showMessageBox(message: string, title: string) {
    this.$alert(message, title)
  }

  // 弹消息
  public showMessage(message: string, type: any = 'success') {
    this.$message({ message, type: type })
  }
}
</script>