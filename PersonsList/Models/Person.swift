//
//  Person.swift
//  PersonsList
//
//  Created by Andrey Zhivotov on 09.04.2022.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
   
    static func getUserInfo() -> [Person] {
        var persons = [Person]()
        
        for _ in 0...DataManager.names.count {
            let person = Person(
                name: DataManager.names.randomElement() ?? "",
                surname: DataManager.surnames.randomElement() ?? "",
                phone: DataManager.phones.randomElement() ?? "",
                email: DataManager.emails.randomElement() ?? ""
            )
            
            persons.append(person)
        }
        
        return persons
    }
}
