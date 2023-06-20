import Foundation

func solution(_ order:[Int]) -> Int {
    var idx = 0
    var boxes = Array((1...order.count).reversed())
    var storage = [Int]()
    
    while idx != order.count {
        let want = order[idx]
        
        if boxes.last ?? order.count+1 <= want {
            while want != boxes.last! {
                storage.append(boxes.removeLast())
            }
            boxes.removeLast()
            idx += 1
        } else {
            if storage.last ?? -1 == want {
                storage.removeLast()
                idx += 1
            } else {
                break
            }
        }
    }
    
    return idx
}