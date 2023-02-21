//
//  Student.swift
//  Absence Recorder
//
//  Created by Alexander Bater on 28/01/2023.
//

import Foundation

class Student: Codable{
    let firstName: String
    let surname: String
    let birthday: Date
    
    init(firstName: String, surname: String, birthday: Date) {
        self.firstName = firstName
        self.surname = surname
        self.birthday = birthday
    }
    
    #if DEBUG
    static let example = Student(firstName: "Roberto", surname: "Baggio", birthday: Date())
    static let examples = [example]
    #endif
}
