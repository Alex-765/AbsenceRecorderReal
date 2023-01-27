//
//  Division.swift
//  Absence Recorder
//
//  Created by Alexander Bater on 28/01/2023.
//

import Foundation


class Division{
    let code: String
    var students: [Student] = []
    
    init(code: String) {
        self.code = code
    }
    
    #if DEBUG
    static func createDivision(code: String, of size: Int) -> Division{
        let division = Division(code: code)
        
//        loop as many times as the parameter size says to create students and add them to the students property
        
        for i in 1...size {
            let student = Student(firstName: "Firstname\(i)", surname: "Surname\(i)", birthday: Date())
            division.students.append(student)
        }
        return division
    }
    static let examples = [Division.createDivision(code: "vBY-1", of: 8),
                           Division.createDivision(code: "vCX-1", of: 10),
                           Division.createDivision(code: "vE5-1", of: 16),
                           Division.createDivision(code: "vD1-1", of: 14)]
    #endif
    
}
