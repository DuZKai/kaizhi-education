import json


# POST /course-publish/_doc/2
# {
#   "charge" : "201001",
#   "companyId" : 1232141425,
#   "createDate" : "2024-12-08 23:04:29",
#   "description" : "本课程旨在围绕各类数据结构的设计与实现，揭示其中的规律原理与方法技巧；同时针对算法设计及其性能分析，使学生了解并掌握主要的套路与手段。",
#   "grade" : "204001",
#   "id" : 2,
#   "mt" : "1-9",
#   "mtName" : "智能硬件/物联网",
#   "name" : "数据结构(上)",
#   "originalPrice" : 46.0,
#   "pic" : "/mediafiles/2024/12/06/8b2d2afa81bdc0aac6686be59f81a2f3.png",
#   "price" : 15.0,
#   "st" : "1-9-4",
#   "stName" : "体感技术",
#   "status" : "203002",
#   "tags" : "一流课程",
#   "teachmode" : "200002",
#   "users" : "学过邓俊辉 著 《数据结构（C++语言版 第3版）》  清华大学出版社  2013.9的人",
#   "validDays" : 365,
#   "isAd" : "800001"
# }
def generate(data):
    _id = data['_id']
    _source = data['_source']
    result = 'POST /course-publish/_doc/' + _id + '\n'
    result += '{\n'
    result += '  "charge" : "' + _source['charge'] + '",\n'
    result += '  "companyId" : ' + str(_source['companyId']) + ',\n'
    result += '  "createDate" : "' + _source['createDate'] + '",\n'
    result += '  "description" : "' + _source['description'] + '",\n'
    result += '  "grade" : "' + _source['grade'] + '",\n'
    result += '  "id" : ' + str(_source['id']) + ',\n'
    result += '  "mt" : "' + _source['mt'] + '",\n'
    result += '  "mtName" : "' + _source['mtName'] + '",\n'
    result += '  "name" : "' + _source['name'] + '",\n'
    result += '  "originalPrice" : ' + str(_source['originalPrice']) + ',\n'
    result += '  "pic" : "' + _source['pic'] + '",\n'
    result += '  "price" : ' + str(_source['price']) + ',\n'
    result += '  "st" : "' + _source['st'] + '",\n'
    result += '  "stName" : "' + _source['stName'] + '",\n'
    result += '  "status" : "' + _source['status'] + '",\n'
    result += '  "tags" : "' + _source['tags'] + '",\n'
    result += '  "teachmode" : "' + _source['teachmode'] + '",\n'
    result += '  "users" : "' + _source['users'] + '",\n'
    result += '  "validDays" : ' + str(_source['validDays']) + ',\n'
    result += '  "isAd" : "' + _source['isAd'] + '"\n'
    result += '}\n'
    return result

if __name__ == '__main__':
    ES_txt = 'ES.json'
    with open(ES_txt, 'r', encoding='utf-8') as f:
        ES = json.load(f)

    data = ES['hits']['hits']
    generate_data = []
    for item in data:
        generate_data.append(generate(item))
    with open('ES.txt', 'w', encoding='utf-8') as f:
        for item in generate_data:
            f.write(item)
            f.write('\n')
        f.close()
