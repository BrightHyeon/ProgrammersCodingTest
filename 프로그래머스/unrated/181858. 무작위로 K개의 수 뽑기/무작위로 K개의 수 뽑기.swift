import Foundation

func solution(_ arr: [Int], _ k: Int) -> [Int] {
    var visit: Set<Int> = []
    var res = [Int]()
    
    for i in arr {
        if !visit.contains(i) && res.count < k {
            res.append(i)
            visit.insert(i)
        }
    }
    
    return res + Array(repeating: -1, count: k - res.count)
}