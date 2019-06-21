//: [Previous](@previous)

import Foundation
import XCTest

func number(of character: Character, in string: String) -> Int {
    return string.filter { $0 == character }.count
}

func repeatedString(s: String, n: Int) -> Int {
    let numberOfFullStrings = n / s.count
    let tail = n % s.count
    
    let partialString = s.map { $0.description }[0..<tail].joined()
    return number(of: "a", in: s) * numberOfFullStrings + number(of: "a", in: partialString)
}

class RepeatedStringTests: XCTestCase {
    func testS1() {
        XCTAssertEqual(repeatedString(s: "aba", n: 10), 7)
    }
    
    func testS2() {
        XCTAssertEqual(repeatedString(s: "a", n: 1000000000000), 1000000000000)
    }
}

XCTestSuite(forTestCaseClass: RepeatedStringTests.self).run()


//: [Next](@next)
