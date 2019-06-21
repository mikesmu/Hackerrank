//: [Previous](@previous)

import Foundation
import XCTest

func rotLeft(a: [Int], d: Int) -> [Int] {
    guard !a.isEmpty else { return a }
    
    var a = a
    var rotations = d % a.count
    
    let head = a.dropFirst(rotations)
    a.append(contentsOf: head)
    
    return a
}

func rotLeft2(a: [Int], d: Int) -> [Int] {
    guard !a.isEmpty else { return a }
    
    var numbers = [Int]()
    var rotations = d % a.count
    
    for index in rotations..<a.count {
        numbers.append(a[index])
    }
    
    for index in 0..<rotations {
        numbers.append(a[index])
    }
    
    return numbers
}

class ArrayLeftRotationTests: XCTestCase {
    func DISABLE_testS0() {
        XCTAssertEqual(rotLeft(a: [], d: 2), [])
    }
    
    func DISABLE_testS1() {
        XCTAssertEqual(rotLeft(a: [1,2], d: 2), [1,2])
    }
    
    func testS3() {
        let d = 1000000
        let input = Array(0..<d)
        
        rotLeft(a: input, d: d+1)
        
//        XCTAssertEqual(rotLeft(a: input, d: d+1), input)
    }
}

XCTestSuite(forTestCaseClass: ArrayLeftRotationTests.self).run()

//: [Next](@next)
