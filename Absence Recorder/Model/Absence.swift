//
//  Absence.swift
//  Absence Recorder
//
//  Created by Alexander Bater on 19/02/2023.
//

import Foundation

class Absence: Codable {
    let takenOn: Date
    var studentAbsences: [StudentAbsence]
    
    init(date: Date, students: [Student]) {
        takenOn = date
        studentAbsences = students.map {StudentAbsence(student: $0)}
    }
    
    #if DEBUG
    static let example = Absence(date: Date(), students: Student.examples)
    #endif
}

