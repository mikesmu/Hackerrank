//: [Previous](@previous)

import Foundation
import XCTest

func arrayManipulation(n: Int, queries: [[Int]]) -> Int {
    let prefix = Array(repeating: 0, count: n)
    
    for
}

class ArrayManipulation: XCTestCase {
    func testS0() {
        XCTAssertEqual(arrayManipulation(n: 5, queries: [[1,2,100], [2,5,100], [3,4,100]]), 200)
    }
    
    func testS1() {
        XCTAssertEqual(arrayManipulation(n: 5, queries: [[2,6,8], [3,5,7], [1,8,1], [5,9,15]]), 31)
    }
}

XCTestSuite(forTestCaseClass: ArrayManipulation.self).run()


