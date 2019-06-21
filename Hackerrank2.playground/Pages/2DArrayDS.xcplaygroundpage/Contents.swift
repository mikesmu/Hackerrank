//: [Previous](@previous)

import Foundation
import XCTest

func hourglassSum(arr: [[Int]]) -> Int {
    guard arr.count > 2 else { return 0 }
    var max = -Int.max

    for i in 1..<arr.count - 1 {
        for j in 1..<arr[i].count - 1 {
            let sum = arr[i-1][j-1] + arr[i-1][j] + arr[i-1][j+1]
                    + arr[i][j]
                    + arr[i+1][j-1] + arr[i+1][j] + arr[i+1][j+1]
            print(sum)
            if sum > max { max = sum }
        }
    }
    
    return max
}

class TwoDArrayDSTests: XCTestCase {
    func testS0() {
        let input = [[0,1,0,0,0,0],
                     [1,1,1,0,0,0],
                     [1,1,1,0,0,0],
                     [0,0,2,4,4,0],
                     [0,0,0,2,0,1],
                     [0,0,1,2,4,0]]
        XCTAssertEqual(hourglassSum(arr: input), 19)
    }
    
    func testS1() {
        let input = [[0,1,0,0,0],
                     [1,1,1,0,0],
                     [1,1,1,0,0],
                     [0,0,2,4,4],
                     [0,0,0,2,0]]
        XCTAssertEqual(hourglassSum(arr: input), 11)
    }
    
    func testS3() {
        let input = [[0,1,0],
                     [1,1,1],
                     [1,1,1]]
        XCTAssertEqual(hourglassSum(arr: input), 5)
    }
    
    func testS4() {
        let input = [[0,1],
                     [1,1]]
        XCTAssertEqual(hourglassSum(arr: input), 0)
    }
    
    func testS2() {
        let input: [[Int]] = []
        XCTAssertEqual(hourglassSum(arr: input), 0)
    }
    
    func testS5() {
        let input: [[Int]] = [[-1,-1,0,-9,-2,-2],
                              [-2,-1,-6,-8,-2,-5],
                              [-1,-1,-1,-2,-3,-4],
                              [-1,-9,-2,-4,-4,-5],
                              [-7,-3,-3,-2,-9,-9],
                              [-1,-3,-1,-2,-4,-5]]
        XCTAssertEqual(hourglassSum(arr: input), -6)
    }
}

XCTestSuite(forTestCaseClass: TwoDArrayDSTests.self).run()

//: [Next](@next)
