import Foundation

func solution(_ operations:[String]) -> [Int] {
    var queue = [Int]()
    
    for i in operations {
        if i.first! == "I" {
            queue.append(Int(i.components(separatedBy: " ")[1])!)
        } else if !queue.isEmpty {
            if i[i.index(i.endIndex, offsetBy: -2)] == "-" {
                queue.remove(at: queue.firstIndex(of: queue.min()!)!)
            } else {
                queue.remove(at: queue.firstIndex(of: queue.max()!)!)
            }
        }
    }
    
    return queue.isEmpty ? [0,0] : [queue.max()!, queue.min()!]
}