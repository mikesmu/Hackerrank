//: [Previous](@previous)

import Foundation
import XCTest

func anagrams(of string: String) -> [(String, String)] {
    let list = string.map { $0.description }
    var anagrams: [(String, String)] = []
    
    for left in 0..<list.count {
        let leftElement = list[0...left].joined()
        for right in (0..<list.count).reversed() {
            let rightElement = String(list[right..<list.count].joined().reversed())
            print("\(leftElement)|\(rightElement)")
            if leftElement == rightElement {
                anagrams.append((leftElement, rightElement))
                break
            }
        }
    }
    print(anagrams)
    return anagrams
}

class SherlockAndAnagramsTests: XCTestCase {
    func testSample1() {
        XCTAssertEqual(anagrams(of: "xyyx").count, 4)
    }
}

XCTestSuite(forTestCaseClass: SherlockAndAnagramsTests.self).run()

//: [Next](@next)
