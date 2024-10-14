import UIKit

// 存
let userDefaults = UserDefaults.standard
userDefaults.set(25, forKey: "Age")
userDefaults.set(false, forKey: "isAdult")
userDefaults.set(Double.pi, forKey: "Pi")

let array = [1, 2, 3]
userDefaults.set(array, forKey: "Array")

let dic = ["name": "Jame"]
userDefaults.set(dic, forKey: "Dic")

// 取
let age = userDefaults.integer(forKey: "Age")
print(age)

let isAdult = userDefaults.bool(forKey: "isAdult")
print(isAdult)

let pi = userDefaults.double(forKey: "Pi")
print(pi)

let SavedArray = userDefaults.array(forKey: "Array")
print(SavedArray)

let SavedArrayTwo = userDefaults.object(forKey: "Array") as? [Int] ?? Array()
print(SavedArrayTwo)

let SavedDic = userDefaults.dictionary(forKey: "Dic")
print(SavedDic)

let SavedDicTwo = userDefaults.object(forKey: "Dic") as? [String: String] ?? [:]
print(SavedDicTwo)

// 删
userDefaults.removeObject(forKey: "Age")
let savedAge = userDefaults.integer(forKey: "Age")
print(savedAge)
