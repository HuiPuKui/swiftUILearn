import UIKit

struct User: Encodable, Decodable {
    var name: String
    var age: Int
}

let user = User(name: "James", age: 30)
let encoder = JSONEncoder()

do {
    let jsonData = try encoder.encode(user)
    if let jsonString = String(data: jsonData, encoding: .utf8) {
        print(jsonString)
    }
} catch {
    print("Error encoding JSON: \(error)")
}

let jsonString = "{\"age\":30,\"name\":\"James\"}"
if let jsonData = jsonString.data(using: .utf8) {
    let decoder = JSONDecoder()
    do {
        let user = try decoder.decode(User.self, from: jsonData)
        print("User name: \(user.name), User age: \(user.age)")
    } catch {
        print("Error decoding JSON: \(error)")
    }
}
