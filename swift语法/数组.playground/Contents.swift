import UIKit

var intArray = [1, 2, 3]
print(type(of: intArray))

var int2Array: [Int] = [4, 5, 6]

// 空数组 []
//var int3Array = [] // 错误：声明空数组必须指定类型
var int3Array: [Int] = []
var int4Array = [Int]()

// 访问元素
print(intArray[0])
print(intArray[1])
print(intArray[2])

print(intArray[intArray.count - 1])

// 添加
int3Array.append(7)
int3Array.append(8)
int3Array.append(9)
print(int3Array[0])
print(int3Array[1])
print(int3Array[2])

int4Array += [10, 11]
print(int4Array[0])
print(int4Array[1])

// ---- 增删改查 ----
var array = [1, 2, 3, 4, 5]
// 子数组
// 数组.prefix(x) 获取前 x 个元素
let firstThree = array.prefix(3)
print(firstThree)
// 数组.suffix(x) 获取后 x 个元素
let lastTwo = array.suffix(2)
print(lastTwo)
// 数组[初始下标...结束下标]
let midArray = array[1...3]
print(midArray)
// 注意：是切片
print(lastTwo[3])
print(lastTwo[4])
// 而不是 print(lastTwo[0]) print(laastTwo[1])

// 元素的添加与删除：insert、remove
// insert：insert(元素, at:位置)
array.insert(0, at: 0)
print(array)
// remove
// remove(at: 位置) 删除特定位置的元素并返回被删除的元素值
let removeItem = array.remove(at: 4)
print(removeItem)
print(array)
// removeAll()
array.removeAll()
// 赋值为空数组
array = []
print(array)

// 其他操作
array = [0, 1, 2, 3, 5]
// .isEmpty
print(array.isEmpty)
// .count
print(array.count)
// .first .last（返回一个可选类型）
print(array.first)
if let first = array.first {
    print(first)
}

print(array.last)
if let last = array.last {
    print(last)
}

// .contains(x) 检查数组是否包含某个元素
print(array.contains(6))
print(array.contains(5))
// .swapAt(下标1, 下标2) 交换两个下标的元素
array.swapAt(0, 1)
print(array)
