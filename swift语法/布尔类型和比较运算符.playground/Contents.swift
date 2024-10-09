import UIKit

let yes = true
print(type(of: yes))

let no: Bool = false

var isStudentPassExam = false
isStudentPassExam = true

if isStudentPassExam {
    print("Congrate")
} else {
    print("Try again")
}

var studentGrade = 90
let studentPassGrade = 60
if studentGrade >= studentPassGrade {
    print("Pass")
} else {
    print("Fail")
}

studentGrade = 59
if studentGrade < studentPassGrade {
    print("Fail")
} else {
    print("Pass")
}

print(type(of: studentGrade))

var a = "aa"
var A = "aA"
if a > A {
    print("a > A")
} else if a == A {
    print("a == A")
} else {
    print("a <= A")
}
