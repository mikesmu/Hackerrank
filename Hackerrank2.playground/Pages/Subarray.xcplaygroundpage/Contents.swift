import UIKit
import XCTest

func subarraySum(arr: [Int]) -> Int {
    var sum: Int = 0
    
    for index1 in 0..<arr.count {
        sum += arr[index1]
        for index2 in index1+1..<arr.count {
            sum += arr[index1...index2].reduce(0, +)
        }
    }
    
    return sum
}

class SubarrayTests: XCTestCase {
    func testSample1() {
        let input = [1,2,3]
        
        XCTAssertEqual(subarraySum(arr: input), 20)
    }
    
    func testSample2() {
        let input = [1,1,1]
        
        XCTAssertEqual(subarraySum(arr: input), 10)
    }
}

////
///
func maxDifference(arr: [Int]) -> Int {
    var maxDiff = -1
    
    for index1 in 1..<arr.count {
        for index2 in 0...max(index1 - 2, 0) {
            let current = arr[index1]
            let previous = arr[index2]
            if current > previous { maxDiff = max(maxDiff, current - previous)}
        }
    }
    
    return maxDiff
}

class MaxDifferenceTests: XCTestCase {
    func testSample1() {
        let input = [1,2,6,4]
        
        XCTAssertEqual(maxDifference(arr: input), 5)
    }
    
    func testSample2() {
        let input = [6,4,2,1]
        
        XCTAssertEqual(maxDifference(arr: input), -1)
    }
    
    func testSample3() {
        XCTAssertEqual(maxDifference(arr: [7,9,5,6,3,2]), 2)
    }
}


XCTestSuite(forTestCaseClass: MaxDifferenceTests.self).run()
