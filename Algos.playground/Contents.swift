import UIKit

class List {
    private var head: Node?
    private var tail: Node?
    
    func add(node: Node) {
        if head == nil {
            head = node
            tail = node
        } else {
            tail?.next = node
            tail = node
        }
    }
    
    init(values: [Int]? = nil) {
        values?.forEach { add(value: $0) }
    }
    
    func add(value: Int) {
        add(node: Node(value: value))
    }
    
    func reversed() -> List {
        guard let head = head else { return List() }
        
        var newHead = (head.copy() as! Node)
        var nextNode: Node? = head.next
        
        while let next = nextNode {
            let copy = next.copy() as! Node
            copy.next = newHead
            newHead = copy
            
            nextNode = nextNode?.next
        }
        
        let revList = List()
        revList.add(node: newHead)
        return revList
    }
    
    func dump() -> String {
        var carry = head
        var elements = [Int]()
        
        while carry != nil {
            elements.append(carry!.value)
            carry = carry!.next
        }
        
        return elements.map { "\($0)" }.joined(separator: ", ")
    }
}

class Node: NSObject, NSCopying {
    public func copy(with zone: NSZone? = nil) -> Any {
        return Node(value: value)
    }
    
    let value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
}

let bigList = List(values: Array(1...1000))
print(bigList.dump())
print()
print(bigList.reversed().dump())


