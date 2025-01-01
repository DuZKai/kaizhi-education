

// 前50课程热门排行榜
import {ICourseInfo} from "@/entity/rank-page-link";
import {createAPI} from "@/utils/request";

export async function hotTop50(): Promise<ICourseInfo[]> {
    const { data } = await createAPI('/learning/hotTop50')
    return data
}