/**
 * 课程-教师关系表
 */
export interface ITeacherList {
  /**
   * 教师标识
   */
  teacherId?: number

  createDate?: Date
  /**
   * 教师简介
   */
  introduction?: string
  /**
   * 照片
   */
  photograph?: string
  /**
   * 教师职位
   */
  position?: string
  /**
   * 教师姓名
   */
  teacherName?: string
}
