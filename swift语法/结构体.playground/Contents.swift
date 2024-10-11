import UIKit

struct Point {
    var x: Double
    var y: Double
}

var point = Point(x: 0.0, y: 0.0)
print(point.x)
print(point.y)

point.x = 1.0
print(point.x)

struct Size {
    var height: Double
    var width: Double
    
    init(square side: Double) {
        self.height = side
        self.width = side
    }
}
// 一旦自定义构造函数，系统默认的就会失效
let size = Size(square: 5.0)

// 要进行相等判断需要继承 Equatable 协议
struct Rentangle: Equatable {
    var height: Double
    var width: Double
    
    func area() -> Double {
        return height * width
    }
    
    // 结构体内成员的值不能修改，如果要修改需要加 mutating 关键字
    mutating func increaseHeightByTen() {
        height = height + 10
    }
    
    static func == (lhs: Rentangle, rhs: Rentangle) -> Bool {
        return lhs.height == rhs.height && lhs.width == rhs.width
    }
}
var rentangle = Rentangle(height: 2.0, width: 4.0)
print(rentangle.area())
rentangle.increaseHeightByTen()
print(rentangle.height)

var rentangle2 = rentangle
print("rentangle height: \(rentangle.height) width: \(rentangle.width)")
print("rentangle2 height: \(rentangle2.height) width: \(rentangle2.width)")
print(rentangle == rentangle2)
rentangle.width = 5
print("rentangle height: \(rentangle.height) width: \(rentangle.width)")
print("rentangle2 height: \(rentangle2.height) width: \(rentangle2.width)")
print(rentangle == rentangle2)
