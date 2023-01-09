import Foundation

func solution(_ queue1:[Int], _ queue2:[Int]) -> Int {
    var que1 = Queue<Int>(queue: queue1)
    var que2 = Queue<Int>(queue: queue2)
    
    var sub = queue1.reduce(0, +) - queue2.reduce(0, +)
    
    var count = 0
    let max = queue1.count + queue2.count + 2
    
    while sub != 0 && count <= max {
        if sub > 0 {
            let first = que1.dequeue()!
            que2.enqueue(first)
            sub -= first * 2
        } else {
            let first = que2.dequeue()!
            que1.enqueue(first)
            sub += first * 2
        }
        count += 1
    }
    
    return count > max ? -1 : count
}

struct Queue<T> {
    private var queue: [T?] = []
    private var head: Int = 0
    
    init(queue: [T] = []) {
        self.queue = queue
    }
    
    mutating func enqueue(_ element: T) {
        queue.append(element)
    }
    
    mutating func dequeue() -> T? {
        guard head < queue.count,
              let element = queue[head] else { return nil }
        queue[head] = nil
        head += 1
        
        if head > 50 {
            queue.removeFirst(head)
            head = 0
        }
        return element
    }
}