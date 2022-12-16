import Foundation

func solution(_ board:[[Int]]) -> Int {
    var dangerousZone: [[Int]] = []
    
    func appendSpots(row: Int, col: Int) {
        for i in row-1...row+1 where i >= 0 && i < board.count {
            for j in col-1...col+1 where j >= 0 && j < board.count {
                dangerousZone.append([i, j])
            }
        }
    }
    
    for (rdx, row) in board.enumerated() {
        for (cdx, num) in row.enumerated() where num == 1 {
            appendSpots(row: rdx, col: cdx)
        }
    }
    
    return board.count * board[0].count - Set(dangerousZone).count
}