

export interface IHotCourseInfo {
    courseId?: number;
    index?: number;
    name?: string;
    userCount?: number;
    image?: string;
}

export interface ICoursePeopleInfo {
    courseId?: number;
    userCount?: number;
}

export interface ITag {
    value?: string;
    label?: string;
    children?: ITag[];
}

/**
 * 分页发布结果集
 */
export interface ICourseSearchPageList {
    /**
     * 数据记录总数
     */
    counts?: number
    /**
     * 数据列表
     */
    items?: ICourseSearchDTO[]
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

export interface ICourseSearchDTO {
    id?: number;
    companyId?: number;
    companyName?: string;
    name?: string;
    users?: string;
    tags?: string;
    mt?: string;
    mtName?: string;
    st?: string;
    stName?: string;
    grade?: string;
    teachmode?: string;
    pic?: string;
    description?: string;
    createDate?: string;
    status?: string;
    remark?: string;
    charge?: string;
    price?: number;
    originalPrice?: number;
    validDays?: number;
    isAd?: string;
    coursePeople?: number;
    courseTeacher?: string;
    teacherNames?: string;
}