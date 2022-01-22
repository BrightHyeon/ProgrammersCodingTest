//
//  크레인 인형뽑기 게임.swift
//  ProgrammersCodingTest
//
//  Created by HyeonSoo Kim on 2022/01/22.
//

import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {

    var boards = Array(repeating: [Int](), count: board.count)
    var basket: [Int] = [-1]
    var score: Int = 0
    
    for (idx, _) in board.enumerated() {
        for (_, i) in board.enumerated() {
        boards[idx] += [i[idx]]
        }
    }
    
    for i in moves {
        if Set(boards[i-1]).count == 1, Array(Set(boards[i-1]))[0] == 0 {
            basket.append(-1)
        } else {
            for (idx, j) in boards[i-1].enumerated() {
                if j != 0 {
                    boards[i-1][idx] = 0
                    if basket[basket.endIndex-1] == j {
                        score += 2
                        basket.remove(at: basket.endIndex-1)
                    } else {
                        basket.append(j)
                    }
                    break
                }
            }
        }
    }
    return score
}
