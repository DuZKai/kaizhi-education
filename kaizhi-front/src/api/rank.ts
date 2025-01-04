

// 前50课程热门排行榜
import {ICoursePeopleInfo, ICourseSearchPageList, IHotCourseInfo, ITag} from "@/entity/rank-page-link";
import {createAPI} from "@/utils/request";

export async function hotTop50(): Promise<IHotCourseInfo[]> {
    const { data } = await createAPI('/learning/hotTop50')
    return data
}

export async function searchCourseList(pageNo, pageSize, searchParams): Promise<ICourseSearchPageList> {
    const { data } = await createAPI('/search/course/list-new?pageNo=' + pageNo + '&pageSize=' + pageSize,'get', searchParams)
    return data
}

export async function getCategoryList(): Promise<ITag[]> {
    const { data } = await createAPI('/search/course/tag')
    return data
}

export async function getCourseUserCount(): Promise<ICoursePeopleInfo[]> {
    const { data } = await createAPI('/learning/userCount')
    return data
}


