//: [Previous](@previous)

import Foundation
import XCTest

func twoStrings(s1: String, s2: String) -> String {
    guard !s1.isEmpty && !s2.isEmpty else { return "NO" }
    
    let size = max(s1.count, s2.count)
    let list1 = s1.map { $0.description }
    let list2 = s2.map { $0.description }
    var numberOfChar = [String: Int]()
    
    for index in 0..<size {
        guard let char1 = 0..<list1.count ~= index ? list1[index] : nil,
            let char2 = 0..<list2.count ~= index ? list2[index] : nil else { break }
        
        numberOfChar[char1, default: 0] += 1
        numberOfChar[char2, default: 0] -= 1
        
        if numberOfChar[char1] == 0 || numberOfChar[char2] == 0 {
            return "YES"
        }
    }

//    print(numberOfChar)
    
    return "NO"
}

class TwoStringsTests: XCTestCase {
    func testS0() {
        XCTAssertEqual(twoStrings(s1: "hello", s2: "world"), "YES")
    }
    
    func testS1() {
        XCTAssertEqual(twoStrings(s1: "hi", s2: "world"), "NO")
    }
}

XCTestSuite(forTestCaseClass: TwoStringsTests.self).run()

//: [Next](@next)
