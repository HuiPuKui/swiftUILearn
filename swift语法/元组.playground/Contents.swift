import UIKit

// 元组
// 存储多个值的数据结构（类型可以不同）
// let 变量名: (类型1, 类型2)

let student: (String, Int) = ("Rose", 90)
print(student.0)
print(student.1)

// 可以自动类型推断
var pet = ("Tony", 2)
print(type(of: pet))
print(pet.0)
print(pet.1)
pet.1 = 3
print(pet.1)

// 可以为元组的元素命名提高可读性
let person = (name: "James", age: 29)
print(person.name)
print(person.age)

// 解包
let namee = person.name
let agee = person.age
print(namee)
print(agee)

// 快速解包
let (name, age) = person
print(name)
print(age)

// 只解包部分元素
let (personName, _) = person
print(personName)

