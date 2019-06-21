//: [Previous](@previous)

import Foundation
import XCTest

enum ClockSystem {
    case am
    case pm
}

func timeConversion(s: String) -> String {
    let clockSystem: ClockSystem = s.hasSuffix("PM") ? .pm : .am
    let time = String(s.dropLast(2))
    let timeComps = time.components(separatedBy: ":")
    
    guard let hourString = timeComps.first, let hour = Int(hourString) else { return s }
    
    var militaryHour = ""
    switch clockSystem {
    case .am:
        militaryHour = hour != 12 ? hourString : "00"
    case .pm:
        militaryHour = hour != 12 ? "\( hour + 12)" : hourString
    }
    
    return militaryHour + ":" + timeComps[1..<timeComps.count].joined(separator: ":")
}

class MilitaryTimeTests: XCTestCase {
    func testSample1() {
        XCTAssertEqual(timeConversion(s: "07:05:45AM"), "07:05:45")
    }
    
    func testSample2() {
        XCTAssertEqual(timeConversion(s: "07:05:45PM"), "19:05:45")
    }
    
    func testSample6() {
        XCTAssertEqual(timeConversion(s: "12:45:54PM"), "12:45:54")
    }
    
    func testSample3() {
        XCTAssertEqual(timeConversion(s: "12:05:45PM"), "12:05:45")
    }
    
    func testSample4() {
        XCTAssertEqual(timeConversion(s: "12:05:45AM"), "00:05:45")
    }
    
    func testSample5() {
        XCTAssertEqual(timeConversion(s: "12:05:45PM"), "12:05:45")
    }
}

XCTestSuite(forTestCaseClass: MilitaryTimeTests.self).run()

//: [Next](@next)
