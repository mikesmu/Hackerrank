//: [Previous](@previous)

import Foundation
import XCTest

func aVeryBigSum(ar: [Int]) -> Int {
    return ar.reduce(0, +)
}

class VeryBigSumTests: XCTestCase {
    func testSample1() {
        XCTAssertEqual(
            aVeryBigSum(ar: [1000000001, 1000000002, 1000000003, 1000000004, 1000000005]),
            5000000015)
    }
}


XCTestSuite(forTestCaseClass: VeryBigSumTests.self).run()


//: [Next](@next)
