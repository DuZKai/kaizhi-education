使用elasticsearch需要建立索引，Mapping相当于表结构，Mapping创建后其字段不能删除，如果要删除需要删除整个索引，下边介绍创建索引、查询索引、删除索引的方法：

## 创建索引，并指定Mapping

```
PUT /course-publish
{
  "settings": {
    "number_of_shards": 1,
    "number_of_replicas": 0
  },
  "mappings": {
    "properties": {
      "id": {
        "type": "keyword"
      },
      "companyId": {
        "type": "keyword"
      },
      "companyName": {
        "analyzer": "ik_max_word",
        "search_analyzer": "ik_smart",
        "type": "text"
      },
      "name": {
        "analyzer": "ik_max_word",
        "search_analyzer": "ik_smart",
        "type": "text"
      },
      "users": {
        "index": false,
        "type": "text"
      },
      "tags": {
        "analyzer": "ik_max_word",
        "search_analyzer": "ik_smart",
        "type": "text"
      },
      "mt": {
        "type": "keyword"
      },
      "mtName": {
        "type": "keyword"
      },
      "st": {
        "type": "keyword"
      },
      "stName": {
        "type": "keyword"
      },
      "grade": {
        "type": "keyword"
      },
      "teachmode": {
        "type": "keyword"
      },
      "pic": {
        "index": false,
        "type": "text"
      },
      "description": {
        "analyzer": "ik_max_word",
        "search_analyzer": "ik_smart",
        "type": "text"
      },
      "createDate": {
        "format": "yyyy-MM-dd HH:mm:ss",
        "type": "date"
      },
      "status": {
        "type": "keyword"
      },
      "remark": {
        "index": false,
        "type": "text"
      },
      "charge": {
        "type": "keyword"
      },
      "price": {
        "type": "scaled_float",
        "scaling_factor": 100
      },
      "originalPrice": {
        "type": "scaled_float",
        "scaling_factor": 100
      },
      "validDays": {
        "type": "integer"
      },
      "isAd": {
        "type": "keyword"
      }
    }
  }
}

```

查询所有的索引，查找course-publish是否创建成功:

```
GET /_cat/indices?v 
```

查询course-publish的索引结构:

```
GET /course-publish/_mapping
```

## 删除索引

如果发现创建的course-publish不正确可以删除重新创建。

删除索引后当中的文档数据也同时删除，一定要谨慎操作！

```
DELETE /course-publish
```



## 插入数据（可选）

可以执行.\kaizhi-education\api-test\kaizhi-search-api.http前两条POST

在程序创建时，自动将在数据库所有已发布课程进行上传搜索服务



## 删除数据（可选）

```
DELETE /course-publish/_doc/102
```





## 查看已有数据

```java
GET /course-publish/_search
{
  "query": {
    "match_all": {}
  },
  "size": 10
}
```

