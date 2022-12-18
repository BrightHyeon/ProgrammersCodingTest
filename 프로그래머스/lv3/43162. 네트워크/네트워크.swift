import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var total = [Int]()
    var stack = [Int]()
    var result = 0
    
    func DFS(row: Int) {
        for (idx, connect) in computers[row].enumerated() where !stack.contains(idx) && connect == 1 {
            stack.append(idx)
            total.append(idx)
            DFS(row: idx)
        }
    }
    
    for row in 0...n-1 {
        if !total.contains(row) {
            result += 1
            stack = []
            stack.append(row)
            total.append(row)
            DFS(row: row)
        }
    }
    
    return result
}