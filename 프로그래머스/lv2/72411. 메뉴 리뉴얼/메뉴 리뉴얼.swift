import Foundation

func solution(_ orders: [String], _ course: [Int]) -> [String] {
    var dict: [String: Int] = [:]
    var res = [String]()
    
    func dfs(_ arr: [Character], _ index: Int, now: [Character]) {
        guard index < arr.count else { return }
        let new = now + [arr[index]]
        if new.count >= 2 {
            dict[String(new.sorted()), default: 0] += 1
        }
        for i in index+1..<arr.count {
            dfs(arr, i, now: new)
        }
    }
    
    for order in orders {
        let arr = Array(order)
        for idx in arr.indices {
            dfs(arr, idx, now: [])
        }
    }
    
    for i in course {
        var temp = dict.filter { $0.key.count == i }.sorted { $0.value < $1.value }
        let max = temp.last?.value ?? 0
        if max >= 2 {
            while max == temp.last?.value ?? Int.max {
                res.append(temp.removeLast().key)
            }
        }
    }
    
    return res.sorted()
}