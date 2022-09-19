import Foundation

func solution(_ n: Int) -> Int {
    var answer = 0
    
    func checkPoint(r: Int, c: Int, history: [[Int]], ban: Set<Int>) -> Bool {
        if !ban.contains(c) {
            for i in history {
                if abs(i[0]-r) == abs(i[1]-c) {
                    return true
                }
            }
            return false
        } else {
            return true
        }
    }
    
    func dfs(row: Int, history: [[Int]], ban: Set<Int>) {
        for i in 1...n {
            if !checkPoint(r: row, c: i, history: history, ban: ban) {
                if row == n {
                    answer += 1
                    break
                } else {
                    var newBan = ban
                    var newHistory = history
                    newBan.insert(i)
                    newHistory.append([row, i])
                    dfs(row: row + 1, history: newHistory, ban: newBan)
                }
            }
        }
    }
    
    dfs(row: 1, history: [], ban: [])
    
    return answer
}