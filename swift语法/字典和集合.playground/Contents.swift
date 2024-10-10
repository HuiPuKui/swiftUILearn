import UIKit

// 字典 Dictionary
// 无序，key-value，key唯一
//var dic: [键类型:值类型] = [:]
//var dic = [键类型:值类型]()

var dic: [String: Int] = [:]
dic["Jame"] = 21
dic["Rose"] = 21
dic["Jame"] = 23
print(dic)

var dict = [String: Int]()
dict["Jame"] = 21
dict["Rose"] = 21
print(dict)

// 字典的遍历
// for (key, value) in dictionary { }
for (key, value) in dict {
    print("\(key) === \(value)")
}

// 只遍历 dictionary.keys，只遍历 dictionary.values
for name in dict.keys {
    print(name)
}

for age in dict.values {
    print(age)
}

// Dictionary.forEach { (key, value) in }
dict.forEach { (key, value) in
    print("\(key) === \(value)")
}

dic = ["Jame": 21, "Rose": 22]
// 通过键读取
let firstStudent = dic["Jame"]
if let firstStudent = firstStudent {
    print(firstStudent)
}

// 字典不存在的元素赋予默认值
var secondStudent = dic["Jack"]
print(secondStudent) // nil
secondStudent = dic["Jack"] ?? 23
print(secondStudent)

let thirdStudent = dic["Tom", default: 24]
print(thirdStudent)

// 判空
print(dic.isEmpty)
dic = [:]
print(dic.isEmpty)
dic = ["Jame": 21, "Rose": 22]

// 个数
print(dic.count)

// 是否包含
if dic.contains(where: { $0.key == "Jame" }) {
    print("Contains")
} else {
    print("Not found")
}

// 集合 Set
// 无序，唯一，支持泛型（存储任何哈希化的数据类型）
var emptySet: Set<Int> = []
emptySet.insert(1)
emptySet.insert(2)
emptySet.insert(2)
print(emptySet)

// remove 返回的是可选类型 当没有这个元素会返回 nil
let remove = emptySet.remove(2)
print(remove)
print(emptySet)

// 注意：这三个返回值都是一个新的 Set
var setOne: Set<Int> = [1, 2, 3]
var setTwo: Set<Int> = [2, 3, 4]
// 两个 Set 的相同部分 intersection
let resultOne = setOne.intersection(setTwo)
print(resultOne)
// 两个 Set 的不同部分 symmetricDifference
let resultTwo = setOne.symmetricDifference(setTwo)
print(resultTwo)
// 合并两个 Set union
let resultThree = setOne.union(setTwo)
print(resultThree)
print(setOne)
print(setTwo)

// 更改原 Set
// 两个 Set 的相同部分 formIntersection
setOne.formIntersection(setTwo)
print(setOne)
setOne = [1, 2, 3]
// 两个 Set 的不同部分 formSymmetricDifference
setOne.formSymmetricDifference(setTwo)
print(setOne)
setOne = [1, 2, 3]
// 合并两个 Set formUnion
setOne.formUnion(setTwo)
print(setOne)
setOne = [1, 2, 3]

// 个数 count
print(setOne.count)
// 是否包含 contains
let result = setOne.contains(1)
print(result)
