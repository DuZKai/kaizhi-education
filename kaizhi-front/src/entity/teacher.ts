/**
 * 教师信息
 */
export interface ITeacherList {
    /**
     * 数据记录总数
     */
    counts?: number
    first?: boolean
    /**
     * 数据列表
     */
    items?: ITeacherDTO[]
    itemsSize?: number
    /**
     * 当前页码
     */
    page?: number
    /**
     * 总页数
     */
    pages?: number
    /**
     * 一页数据数
     */
    pageSize?: number
}

export interface ITeacherDTO{

    /**
     * 教师标识
     */
    teacherId?: number
    id?: number

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