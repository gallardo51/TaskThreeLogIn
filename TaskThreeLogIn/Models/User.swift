//
//  User.swift
//  TaskThreeLogIn
//
//  Created by Александр Соболев on 12.06.2022.
//

import Foundation

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserData() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
            )
    }
}
struct Person {
    let name: String
    let surname: String
    let image: String
    
    var nameSurname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Alex", surname: "Sobolev", image: "SwiftImage")
    }
}
