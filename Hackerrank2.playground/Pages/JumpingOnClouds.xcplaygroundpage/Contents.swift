//: [Previous](@previous)

import Foundation
import XCTest

func jumpingOnClouds(c: [Int]) -> Int {
    let thunder = 1
    var jumps = 0
    var index = 0
    
    while index < c.count {
        if index + 1 < c.count && c[index + 1] == thunder {
            jumps += 1
            index += 2
        } else if index + 2 < c.count && c[index + 2] != thunder {
            jumps += 1
            index += 2
        } else if index + 1 < c.count && c[index + 1] != thunder {
            jumps += 1
            index += 1
        } else {
            index += 1
        }
    }
    return jumps
}

class JumpingOnCloudsTests: XCTestCase {
    func testS1() {
        XCTAssertEqual(jumpingOnClouds(c: [0,0,1,0,0,1,0]), 4)
    }
    
    func testS2() {
        XCTAssertEqual(jumpingOnClouds(c: [0,0,0,0,1,0]), 3)
    }
    
    func testS3() {
        XCTAssertEqual(jumpingOnClouds(c: [0,1,0]), 1)
    }
}

XCTestSuite(forTestCaseClass: JumpingOnCloudsTests.self).run()

//: [Next](@next)
