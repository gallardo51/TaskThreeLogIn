//
//  User.swift
//  TaskThreeLogIn
//
//  Created by Александр Соболев on 12.06.2022.
//

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
    let bornData: String
    let cityFrom: String
    let cellPhone: String
    let userPets: String
    let image: String
    
    var nameSurname: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(name: "Alex", surname: "Sobolev", bornData: "08.07.1988", cityFrom: "Воронеж", cellPhone: "89610297502", userPets: "Собака", image: "AlexImage")
    }
}
