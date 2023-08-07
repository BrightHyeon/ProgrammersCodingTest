import Foundation

func solution(_ board: [String]) -> Int {
    let board = board.map { Array($0) }
    var needMove = [[Int]]()
    var visited = Set<[Int]>()
    var start = [0, 0]
    var res = 0

    for r in 0..<board.count {
        for c in 0..<board[0].count where board[r][c] == "R" {
            start = [r, c]; break
        }
    }

    func move(_ to: [Int]) -> Bool {
        needMove.removeFirst()
        if board[to[0]][to[1]] == "G" {
            return true
        }
        visited.insert(to)

        var up = to
        while up[0] >= 0 && board[up[0]][up[1]] != "D" {
            up[0] -= 1
        }
        up[0] += 1
        if !visited.contains(up) {
            needMove.append(up)
        }

        var down = to
        while down[0] != board.count && board[down[0]][down[1]] != "D" {
            down[0] += 1
        }
        down[0] -= 1
        if !visited.contains(down) {
            needMove.append(down)
        }

        var left = to
        while left[1] >= 0 && board[left[0]][left[1]] != "D" {
            left[1] -= 1
        }
        left[1] += 1
        if !visited.contains(left) {
            needMove.append(left)
        }

        var right = to
        while right[1] != board[0].count && board[right[0]][right[1]] != "D" {
            right[1] += 1
        }
        right[1] -= 1
        if !visited.contains(right) {
            needMove.append(right)
        }

        return false
    }

    needMove = [start]

    outerloof: while true {
        for i in needMove {
            if move(i) {
                break outerloof
            }
        }
        if needMove.isEmpty {
            return -1
        }
        res += 1
    }
    return res
}