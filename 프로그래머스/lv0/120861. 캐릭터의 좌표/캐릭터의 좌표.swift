import Foundation

func solution(_ keyInput: [String], _ board: [Int]) -> [Int] {
    return keyInput.reduce(into: [0, 0]) {
        switch $1 {
        case "left" where $0[0] > -board[0]/2: return $0[0] -= 1
        case "right" where $0[0] < board[0]/2: return $0[0] += 1
        case "up" where $0[1] < board[1]/2: return $0[1] += 1
        case "down" where $0[1] > -board[1]/2: return $0[1] -= 1
        default: break
        }
    }
}