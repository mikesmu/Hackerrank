//: [Previous](@previous)

import Foundation
import XCTest

func removeDuplicates(_ nums: inout [Int]) -> Int {
    guard !nums.isEmpty else { return 0 }
    
    var temp = nums.last!
    for index in (0..<nums.count-1).reversed() {
        let current = nums[index]
        if temp == current { nums.remove(at: index) }
        else { temp = current }
    }
    return nums.count
}

class DuplicatesTests: XCTestCase {
    func testSingleDuplication() {
        var input = [1,1,2]
        
        let output = removeDuplicates(&input)
        
        XCTAssertEqual(output, 2)
        XCTAssertEqual(input, [1,2])
    }
    
    func testManyDuplications() {
        var input = [1,1,1,1,1,1,2,2,2,2,3,4,4,4,4,4]
        
        let output = removeDuplicates(&input)
        
        XCTAssertEqual(output, 4)
        XCTAssertEqual(input, [1,2,3,4])
    }
}


XCTestSuite(forTestCaseClass: DuplicatesTests.self).run()
