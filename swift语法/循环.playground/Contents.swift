import UIKit

// while 循环
var i = 0
while i < 5 {
    print(i)
    i += 1
}

// repeat-while 循环
i = 0
repeat {
    print(i)
    i += 1
} while i < 5

// for 循环
// range 表示一系列值的数据类型（范围）
// 可以是闭区间（包含起始值和结束值）
// 可以是半开区间（包含起始值，不包含结束值）
var count = 5
var rangeExample = 1...count // 1 ~ 5
var halfRangeExample = 1..<count // 1 ~ 4

// for item in collection { // 循环体代码 }
var sum = 0
for item in 1...10 where item % 2 == 0 {
    sum += item
}
print(sum)

// 集合遍历
var array = [1, 2, 3, 4, 5]
// 使用 for in 循环
for item in array {
    print(item)
}
// 使用 enumerated() 获取 index 和 item
for (index, item) in array.enumerated() {
    print("index \(index), item \(item)")
}
// 使用 forEach 循环
array.forEach { item in
    print(item)
}

for index in 0...4 {
    print(array[index])
}

for index in 0..<array.count {
    print(array[index])
}

// 循环的嵌套与退出
var floors = [1, 2]
var rooms = [1, 2, 3]

for floor in floors {
    for room in rooms {
        if room == 2 {
            break
        }
        print("\(floor) - \(room)")
    }
}

for floor in floors {
    for room in rooms {
        if room == 2 {
            continue
        }
        print("\(floor) - \(room)")
    }
}
