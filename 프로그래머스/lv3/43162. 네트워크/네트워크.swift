import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var visit = Array(repeating: false, count: n)
    var stack = [Int]()
    var result = 0
    
    func DFS(row: Int) {
        for (idx, connect) in computers[row].enumerated() where !stack.contains(idx) && connect == 1 {
            stack.append(idx)
            visit[idx] = true
            DFS(row: idx)
        }
    }
    
    for row in 0...n-1 {
        if !visit[row] {
            result += 1
            stack = []
            stack.append(row)
            visit[row] = true
            DFS(row: row)
        }
    }
    
    return result
}