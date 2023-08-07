import Foundation

func solution(_ board: [String]) -> Int {
    let board = board.map { Array($0) }
    var oS = Set<Int>(), xS = Set<Int>()
    
    let ans: Set<Set<Int>> = [
        [0,1,2], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8], [0,4,8], [2,4,6]
    ]
    
    for r in 0...2 {
        for c in 0...2 {
            if board[r][c] == "O" {
                oS.insert(r*3+c)
            } else if board[r][c] == "X" {
                xS.insert(r*3+c)
            }
        }
    }
    
    func isBingo(_ set: Set<Int>) -> Bool {
        for i in ans {
            if i.isSubset(of: set) {
                return true
            }
        }
        return false
    }
    
    
    if xS.count > oS.count || oS.count > xS.count+1 {
        return 0
    }
    
    if isBingo(oS) && oS.count != xS.count+1 {
        return 0
    }
    
    if isBingo(xS) && oS.count != xS.count {
        return 0
    }
    
    return 1
}