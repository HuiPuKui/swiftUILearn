import UIKit

// 继承 CustomStringConvertible 可以在输出时具有更好的可读性
class Student: CustomStringConvertible {
    var name: String
    var age: Int
    
    var description: String {
        return "Student: [\(name), \(age)]"
    }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    func sayHi() {
        print("\(name) say Hi")
    }
}

let jame = Student(name: "Jame", age: 23)
print(jame)
jame.sayHi()

let rose = Student(name: "Rose", age: 18)
print(rose)
rose.sayHi()

// 浅拷贝
let jameCopy = jame
print(jameCopy)
print(jame)
jameCopy.age = 24
print(jameCopy)
print(jame)

// 深拷贝
let jameCopyDeep = Student(name: jame.name, age: jame.age)
print(jameCopyDeep)
print(jame)
jameCopyDeep.age = 25
print(jameCopyDeep)
print(jame)
