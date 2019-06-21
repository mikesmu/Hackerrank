//: [Previous](@previous)

import Foundation
import XCTest

func alternatingCharacters(s: String) -> Int {
    guard s.count > 1 else { return 0 }
    
    let list = s.map { $0.description }
    var deletions = 0
    var left = list[0]
    
    for index in 1..<list.count {
        var right = list[index]
        if left == right {
            deletions += 1
        } else {
            left = right
        }
    }
    
    return deletions
    
}

class AlternatingCharactersTests: XCTestCase {
    func testS0() {
        XCTAssertEqual(alternatingCharacters(s: "AAAA"), 3)
    }
    
    func testS1() {
        XCTAssertEqual(alternatingCharacters(s: "A"), 0)
    }
    
    func testS2() {
        XCTAssertEqual(alternatingCharacters(s: "AA"), 1)
    }
    
    func testS3() {
        XCTAssertEqual(alternatingCharacters(s: "AAB"), 1)
    }
    
    func testS4() {
        XCTAssertEqual(alternatingCharacters(s: "AABABAAAB"), 3)
    }
}

XCTestSuite(forTestCaseClass: AlternatingCharactersTests.self).run()

//: [Next](@next)
