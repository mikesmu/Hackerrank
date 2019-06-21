//: [Previous](@previous)

import Foundation

class AsyncArray<T> {
    private var items: [T] = []
    private let queue = DispatchQueue(label: "asyncArray", attributes: .concurrent)
    
    func element(at index: Int) -> T? {
        var result: T?
        queue.sync {
            result = 0..<self.items.count ~= index ? self.items[index] : nil
        }
        return result
    }
    
    func append(_ element: T) {
        queue.async(flags: .barrier) { self.items.append(element) }
    }
    
    func last() -> T? {
        return element(at: items.count - 1)
    }
    
    var description: String {
        var result = ""
        queue.sync {
            result = items.description
        }
        return result
    }
}

let a1 = AsyncArray<Int>()

for i in 0...1000 {
    a1.append(i)
    print(a1.last())
}

a1.description


//: [Next](@next)
