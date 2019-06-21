//: [Previous](@previous)

import Foundation
import XCTest

func containsDuplicate(_ nums: [Int]) -> Bool {
    guard nums.count > 1 else { return false }
    
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            if nums[i] == nums[j] { return true }
        }
    }
    return false
}

func containsDuplicate2(_ nums: [Int]) -> Bool {
    guard nums.count > 1 else { return false }

    var set = Set<Int>()
    
    for i in 0..<nums.count {
        if set.insert(nums[i]).inserted == false { return true }
    }
    return false
}

class ContainsDuplicateTests: XCTestCase {
    func testEmptyArray() {
        let input: [Int] = []
        
        XCTAssertFalse(containsDuplicate2(input))
    }
    
    func testSingleElementArray() {
        let input: [Int] = [1]
        
        XCTAssertFalse(containsDuplicate2(input))
    }
    
    func testContainsDuplication1() {
        let input = [1,2,3,1]
        
        XCTAssertTrue(containsDuplicate2(input))
    }
    
    func testContainsNoDuplication() {
        let input = [1,2,3,4]
        
        XCTAssertFalse(containsDuplicate2(input))
    }
    
    func testContainsDuplication2() {
        let input = [1,1,1,3,3,4,3,2,4,2]
        
        XCTAssertTrue(containsDuplicate2(input))
    }
}


XCTestSuite(forTestCaseClass: ContainsDuplicateTests.self).run()

