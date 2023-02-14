import Foundation

func solution(_ topping:[Int]) -> Int {
    var count = 0
    
    var bro: [Int: Int] = [:]
    topping.forEach {
        bro[$0, default: 0] += 1
    }
    
    var chulSu: [Int: Int] = [:]
    for i in topping {
        chulSu[i, default: 0] += 1
        bro[i]! != 1 ? (bro[i]! -= 1) : (bro[i] = nil)
        if chulSu.keys.count == bro.keys.count {
            count += 1
        } else if chulSu.keys.count > bro.keys.count {
            break
        }
    }
    
    return count
}