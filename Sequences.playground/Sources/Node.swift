import Foundation

enum Node<Element> {
    indirect case middle(element: Element, next: Node<Element>)
    case end
}

extension Node {
    
    var element: Element? {
        switch self {
        case .middle(let el, _): return el
        default: return nil
        }
    }
    
    var next: Node {
        switch self {
        case .middle(_, let n): return n
        default: return .end
        }
    }
}
