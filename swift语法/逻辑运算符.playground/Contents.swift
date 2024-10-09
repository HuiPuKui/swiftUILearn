import UIKit

// &&
let isSunday = true
let isWarm = true

if isSunday && isWarm {
    print("Today is Sunday and weather is warm")
}

// ||
let hasMoney = false
let hasCreditCard = true

if hasMoney || hasCreditCard {
    print("We can buy")
}

// ! // 只能给 布尔类型 的变量进行取反操作
let isRaining = false

if !isRaining {
    print("It is not raining")
}

let passingGrade = 60
let isJamePassExam = 90 >= passingGrade
let isTonyPassExam = 60 >= passingGrade
let isRosePassExam = 30 >= passingGrade

let everyonePassExam = isJamePassExam && isTonyPassExam && isRosePassExam
let anyonePassExam = isJamePassExam || isTonyPassExam || isRosePassExam

print(isJamePassExam)
print(isTonyPassExam)
print(isRosePassExam)
print(everyonePassExam)
print(anyonePassExam)

let isStudent = true
let isEmployee = false
let isAdult = false

if (isStudent || isEmployee) && !isAdult {
    print("You get discount 20%")
} else {
    print("You don't have discount")
}
