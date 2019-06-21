//: [Previous](@previous)

import Foundation
import XCTest

func makeAnagram(a: String, b: String) -> Int {
    var dict: [Character: Int] = [:]
    
    for _a in a {
        dict[_a, default: 0] += 1
    }
    
    for _b in b {
        dict[_b, default: 0] -= 1
    }
//    print(dict)
    return dict.values.reduce(into: 0) { return $0 += abs($1) }
}

class AnagramsTests: XCTestCase {
    func testS0() {
        XCTAssertEqual(makeAnagram(a: "cde", b: "abc"), 4)
    }
    
    func testS1() {
        XCTAssertEqual(makeAnagram(a: "cdde", b: "cddebb"), 2)
    }
    
    func testS2() {
        XCTAssertEqual(makeAnagram(a: "fcrxzwscanmligyxyvym", b: "jxwtrhvujlmrpdoqbisbwhmgpmeoke"), 30)
    }
}

XCTestSuite(forTestCaseClass: AnagramsTests.self).run()


//: [Next](@next)
