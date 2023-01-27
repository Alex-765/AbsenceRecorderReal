//
//  Student.swift
//  Absence Recorder
//
//  Created by Alexander Bater on 28/01/2023.
//

import Foundation

class Student{
    let firstName: String
    let surname: String
    let birthday: Date
    
    init(firstName: String, surname: String, birthday: Date) {
        self.firstName = firstName
        self.surname = surname
        self.birthday = birthday
    }
}
