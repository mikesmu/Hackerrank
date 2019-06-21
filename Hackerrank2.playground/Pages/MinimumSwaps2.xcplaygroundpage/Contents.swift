//: [Previous](@previous)

import Foundation
import XCTest

func minimumSwaps(arr: [Int]) -> Int {
    guard arr.count > 1 else { return arr.count }
    var arr = arr
//    print(arr)
    
    var moves = 0
    var moved = true
    
    for index in 0..<arr.count {
        while moved {
            let left = arr[index]
            let indexOfLeft = left - 1
            
            if indexOfLeft == index { moved = false }
            else {
                let right = arr[indexOfLeft]
                arr[index] = right
                arr[indexOfLeft] = left
                
                moves += 1
//                print(arr)
            }
        }
        moved = true
    }
    
    return moves
}


class MinimumSwaps2: XCTestCase {
    func testS0() {
        XCTAssertEqual(minimumSwaps(arr: []), 0)
    }
    
    func testS1() {
        XCTAssertEqual(minimumSwaps(arr: [1]), 1)
    }
    
    func testS2() {
        XCTAssertEqual(minimumSwaps(arr: [4,3,1,2]), 3)
    }
    
    func testS3() {
        XCTAssertEqual(minimumSwaps(arr: [1,3,5,2,4,6,7]), 3)
    }
    
    func testS4() {
        XCTAssertEqual(minimumSwaps(arr: [7,1,3,2,4,5,6]), 5)
    }
    
    func testS5() {
        let input: [Int] = (1...100000).reversed()
        XCTAssertEqual(minimumSwaps(arr: input), 50000)
    }
}

XCTestSuite(forTestCaseClass: MinimumSwaps2.self).run()


//: [Next](@next)
