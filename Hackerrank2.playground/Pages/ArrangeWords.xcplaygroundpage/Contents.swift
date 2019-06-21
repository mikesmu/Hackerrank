//: [Previous](@previous)

import Foundation
import XCTest

func arrange(sentence: String) -> String {
    var result = [String]()
    var wordsByCount = [Int: [String]]()
    let splitedSentence = sentence.dropLast(1).components(separatedBy: " ")
    
    for word in splitedSentence {
        if var listWords = wordsByCount[word.count] {
            listWords.append(word)
            wordsByCount[word.count] = listWords
        } else {
            wordsByCount[word.count] = [word]
        }
    }
    
    let sortedKeys = wordsByCount.keys.sorted()
    
    for key in sortedKeys {
        if let words = wordsByCount[key] {
            result.append(contentsOf: words)
        }
    }
    
    result = result.enumerated().map { (offset: Int, element: String) in
        return offset == 0 ? element.capitalized : element.lowercased()
    }
    
    return result.joined(separator: " ") + "."
}

class ArrangeWordsTests: XCTestCase {
    func testSample1() {
        let input = "Here i come."
        let output = "I here come."
        
        XCTAssertEqual(arrange(sentence: input), output)
    }
    
    func testSample2() {
        let input = "The lines are printed in reverse order."
        let output = "In the are lines order printed reverse."
        
        XCTAssertEqual(arrange(sentence: input), output)
    }
}


XCTestSuite(forTestCaseClass: ArrangeWordsTests.self).run()
