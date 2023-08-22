import Foundation

func solution(_ board: [[Int]], _ k: Int) -> Int {
    var res = 0
    
    for i in 0..<board.count {
        for j in 0..<board[0].count where i + j <= k {
            res += board[i][j]
        }
    }
    
    return res
}