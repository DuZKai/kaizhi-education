import { createAPI } from '@/utils/request'

import { ICourseCategory, ICourseBaseInfo } from '@/entity/course-add-base'

// UV查询
export async function getinfoUV(): Promise<number> {
  const { data } = await createAPI('/auth/info/uv')
  return data
}

export async function getinfoMan(): Promise<number> {
  const { data } = await createAPI('/auth/info/user/man')
  return data
}

export async function getinfoWoman(): Promise<number> {
  const { data } = await createAPI('/auth/info/user/woman')
  return data
}

export async function getinfoAll(): Promise<number> {
  const { data } = await createAPI('/auth/info/user/all')
  return data
}