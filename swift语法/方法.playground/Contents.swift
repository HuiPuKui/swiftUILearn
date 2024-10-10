import UIKit

func greeting() {
    print("Hello")
}

greeting()

var passingGrade = 80
var jameGrade = 90
var roseGrade = 50

// 老的写法
let isPassingForJame = jameGrade >= passingGrade
let isPassingForRose = roseGrade >= passingGrade

// 方法写法，参数是 let，_ 调用时不用写参数名
func isStudentPassedCourse(_ studentGrade: Int, passingGrade: Int = 60) {
    print(studentGrade >= passingGrade ? "Pass!" : "Fail")
}
isStudentPassedCourse(jameGrade, passingGrade: passingGrade)
isStudentPassedCourse(roseGrade)

// 方法的返回值
// 无返回值
func sayHello() -> Void {
    print("Hello")
}
sayHello()

// 有返回值（单个或多个）
func isEven(number: Int) -> Bool {
    return number % 2 == 0
}
let isTwoEven = isEven(number: 2)
print(isTwoEven)
let isThreeEven = isEven(number: 3)
print(isThreeEven)

func findMinAndMaxInArray(array: [Int]) -> (min: Int, max: Int) {
    let min = array.min() ?? 0
    let max = array.max() ?? 0
    return (min, max)
}
let (min, max) = findMinAndMaxInArray(array: [1, 2, 3, 4, 5])
print(min)
print(max)

// 返回可选值
func getIndexOfElementInArray(array: [Int], element: Int) -> Int? {
    if let index = array.firstIndex(of: element) {
        return index
    } else {
        return nil
    }
}
let indexOfOne = getIndexOfElementInArray(array: [1, 2, 3, 4], element: 1)
print(indexOfOne)
let indexOfFive = getIndexOfElementInArray(array: [1, 2, 3, 4], element: 5)
print(indexOfFive)
