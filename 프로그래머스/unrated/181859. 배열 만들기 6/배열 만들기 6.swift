import Foundation

func solution(_ arr: [Int]) -> [Int] {
    var stk = [Int]()
    
    for i in arr {
        if !stk.isEmpty {
            if stk.last! == i {
                stk.removeLast()
            } else {
                stk.append(i)
            }
        } else {
            stk.append(i)
        }
    }
    
    return stk.isEmpty ? [-1] : stk
}