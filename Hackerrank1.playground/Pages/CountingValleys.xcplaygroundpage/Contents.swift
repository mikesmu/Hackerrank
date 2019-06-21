//: [Previous](@previous)

import Foundation
import XCTest

func countingValleys(n: Int, s: String) -> Int {
    let steps = s.map { $0.description }
    var level = 0
    var valleys = 0
    
    for index in 0..<n {
        let step = steps[index]
        level += step == "U" ? 1 : -1
        if level == 0 && step == "U" { valleys += 1 }
    }
    
    return valleys
}

class CountingValleysTests: XCTestCase {
    func testS1() {
        XCTAssertEqual(countingValleys(n: 2, s: "DU"), 1)
    }
    
    func testS2() {
        XCTAssertEqual(countingValleys(n: 4, s: "UDDU"), 1)
    }
    
    func testS3() {
        XCTAssertEqual(countingValleys(n: 8, s: "DDUUUUDD"), 1)
    }
    
    func testS4() {
        XCTAssertEqual(countingValleys(n: 2, s: "UD"), 0)
    }
    
    func testS5() {
        XCTAssertEqual(countingValleys(n: 8, s: "DUDUDUDU"), 4)
    }
}

XCTestSuite(forTestCaseClass: CountingValleysTests.self).run()


//: [Next](@next)
