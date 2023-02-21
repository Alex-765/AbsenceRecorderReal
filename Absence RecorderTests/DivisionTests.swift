//
//  DivisionTests.swift
//  Absence RecorderTests
//
//  Created by Alexander Bater on 21/02/2023.
//

import XCTest
@testable import Absence_Recorder


final class DivisionTests: XCTestCase {
    
    func testGetAbsenceDivisionWithAbsenceOnThatDayReturnsAbsence() throws {
        // arrange
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let dateLaterToday = Date(timeIntervalSinceNow: 100)
        let dateTomorrow = Date(timeIntervalSinceNow: 1000000000000)
        let absence1 = Absence(date: dateTomorrow, students: Student.examples)
        let absence2 = Absence(date: dateToday, students: Student.examples)
        division.absences.append(absence1)
        division.absences.append(absence2)
        
        // act
        let actual = division.getAbsence(for: dateLaterToday)
        
        // asset
        if let actualNotNil = actual {
            XCTAssertEqual(actualNotNil.takenOn, absence2.takenOn)
        }
        
    }



}
