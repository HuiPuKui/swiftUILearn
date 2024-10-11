import UIKit

struct Rectangle {
    var width: Double
    var height: Double
}

// 普通属性
var rectangle = Rectangle(width: 10, height: 5)
print(rectangle.width)
print(rectangle.height)

rectangle.width = 15
print(rectangle.width)
rectangle.height = 10
print(rectangle.height)

// 计算属性
// 不存储实际的值
// 动态计算
// 每次访问时都会被重新计算

struct Circle {
    var radius: Double
    var area: Double {
        return Double.pi * radius * radius
    }
}

var circle = Circle(radius: 5)
print(circle.area)
