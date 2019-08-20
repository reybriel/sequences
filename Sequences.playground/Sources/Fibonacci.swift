import Foundation

public struct Fibonacci: Sequence {
    public typealias Element = Int
    
    private let count: Int
    private var lastTwo: (Int, Int) = (0, 1)
    private var currentElement: Int = 1
    
    public init(count: Int) {
        self.count = count
    }
}

extension Fibonacci: IteratorProtocol {
    
    public mutating func next() -> Int? {
        var nextElement: Int?
        
        if currentElement <= 2 {
            nextElement = currentElement - 1
        } else if currentElement > count {
            nextElement = nil
        } else {
            let element = lastTwo.0 + lastTwo.1
            lastTwo = (lastTwo.1, element)
            nextElement = element
        }
        
        currentElement += 1
        return nextElement
    }
}
