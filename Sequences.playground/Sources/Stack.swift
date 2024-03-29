import Foundation

public struct Stack<T>: Sequence {
    public typealias Element = T
    
    private var topNode: Node<T>
    public var top: T? {
        return topNode.element
    }
    
    public init() {
        topNode = .end
    }
    
    public mutating func push(element: T) {
        let newNode = Node.middle(element: element, next: topNode)
        topNode = newNode
    }
    
    public mutating func pop() -> T? {
        defer { topNode = topNode.next }
        return topNode.element
    }
}

extension Stack: IteratorProtocol {
    
    public mutating func next() -> T? {
        return pop()
    }
}
