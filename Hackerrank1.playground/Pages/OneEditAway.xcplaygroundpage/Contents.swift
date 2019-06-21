//: [Previous](@previous)

import Foundation
import XCTest

extension Array {
    func inserting(_ newElement: Element, at i: Int) -> Array {
        var copy = self
        copy.insert(newElement, at: i)
        return copy
    }
    
    func replacing(_ newElement: Element, at i: Int) -> Array {
        var copy = self
        copy[i] = newElement
        return copy
    }
}

func difference(a: String, b: String) -> Bool {
    guard a != b else { return true }
    
    let listA = a.map { $0.description }
    let listB = b.map { $0.description }
    
    var result = false
    for index in 0..<max(listA.count, listB.count) {
        let letterA = 0..<listA.count ~= index ? listA[index] : ""
        let letterB = 0..<listB.count ~= index ? listB[index] : ""
        
        if letterB == letterA { continue }
        
        // add
        if listA == listB.inserting(letterA, at: index) ||
            listB == listA.inserting(letterB, at: index) {
            result = true
            break
        }
        
        // replace
        if listA == listB.replacing(letterA, at: index) ||
            listB == listA.replacing(letterB, at: index) {
            result = true
            break
        }

        if !result { break }
    }
    
    return result
}

class OneEditAwayTests: XCTestCase {
    func testExample1() {
        XCTAssertTrue(difference(a: "pale", b: "ple"))
    }
    
    func testExample1b() {
        XCTAssertTrue(difference(a: "ple", b: "pale"))
    }
    
    func testExample2() {
        XCTAssertTrue(difference(a: "pales", b: "pale"))
    }
    
    func testExample2b() {
        XCTAssertTrue(difference(a: "pale", b: "pales"))
    }
    
    func testExample3() {
        XCTAssertTrue(difference(a: "pale", b: "bale"))
    }
    
    func testExample3b() {
        XCTAssertTrue(difference(a: "bale", b: "pale"))
    }
    
    func testExample4() {
        XCTAssertFalse(difference(a: "pale", b: "bake"))
    }
    
    func testExample4b() {
        XCTAssertFalse(difference(a: "bake", b: "pale"))
    }
}


XCTestSuite(forTestCaseClass: OneEditAwayTests.self).run()
