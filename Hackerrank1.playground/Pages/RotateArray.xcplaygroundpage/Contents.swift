//: [Previous](@previous)

import Foundation
import XCTest

func rotate(_ nums: inout [Int], _ k: Int) {
    guard k > 0 && !nums.isEmpty else { return }
    
    let lastIndex = nums.count - 1
    for _ in 1...k {
        let temp = nums[lastIndex]
        nums.remove(at: lastIndex)
        nums.insert(temp, at: 0)
    }
}

class RotateArrayTests: XCTestCase {
    func testEmptyArray() {
        var input: [Int] = []
        
        rotate(&input, 3)
        
        XCTAssertEqual(input, [])
    }
    
    func testKGreaterThenSizeOfInput() {
        var input = [1]

        rotate(&input, 0)

        XCTAssertEqual(input, [1])
    }
    
    func testRotateSingleElement() {
        var input: [Int] = [1,2,3,4,5]
        
        rotate(&input, 1)
        
        XCTAssertEqual(input, [5,1,2,3,4])
    }
}


XCTestSuite(forTestCaseClass: RotateArrayTests.self).run()
