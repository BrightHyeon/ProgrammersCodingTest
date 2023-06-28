import Foundation

func check(_ str1: String, _ str2: String) -> Bool {
    guard str1.count == str2.count else { return false }
    let a = Array(str1), b = Array(str2)
    for i in 0..<str1.count {
        if !(a[i] == b[i] || b[i] == "*") {
            return false
        }
    }
    return true
}

func solution(_ user_id: [String], _ banned_id: [String]) -> Int {
    var arr: [[String]] = []
    
    for i in banned_id {
        var cases = [String]()
        for id in user_id {
            if check(id, i) {
                cases.append(id)
            }
        }
        arr.append(cases)
    }
    
    var res: Set<[String]> = []
    
    func dfs(_ now: [String]) {
        let idx = now.count
        if idx == arr.count {
            res.insert(now.sorted())
            return
        }
        for i in arr[idx] {
            if !now.contains(i) {
                dfs(now + [i])
            }
        }
    }
    
    dfs([])
    
    return res.count
}