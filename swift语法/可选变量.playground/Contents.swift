import UIKit

// 可选变量：使用 ? 来声明可选变量（默认值 nil）
var petName: String?
petName = "WangCai"
print(petName)
petName = nil
print(petName)
var optionalInt: Int?
if let int = optionalInt {
    print(int)
} else {
    print("it is nil")
}
optionalInt = nil
optionalInt = 10
// 使用 ! 来声明隐式解包可选变量
print(optionalInt!) // 强制解包：必须确定有值才能用

var optionalDouble: Double! = 12.3
print(optionalDouble + 0.2)

// 使用 ?? 来给一个默认值
optionalDouble = nil
print(optionalDouble ?? 0.0 + 0.2)

// 可选类型不支持类型推断！！！
var double = 1.0
print(type(of: double))

var doublee: Double? = 1.0
print(type(of: doublee))
