//
//  [1차] 프렌즈 4블록.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/05/29.
//

import Foundation

func friendsFour(_ m:Int, _ n:Int, _ board:[String]) -> Int {
    var rotArr: [[Character]] = Array.init(repeating: [], count: n)
    var position: Set<[Int]> = []
    var result: Int = 0
    
    for i in board.reversed() {
        for (jdx, j) in i.enumerated() {
            rotArr[jdx].append(j)
        }
    }
    while true {
        for i in 0...rotArr.count - 2 {
            for j in 0...rotArr[0].count - 2 {
                if (rotArr[i][j]==rotArr[i+1][j]) && (rotArr[i][j]==rotArr[i][j+1]) && (rotArr[i][j]==rotArr[i+1][j+1]) && (rotArr[i][j] != "0") {
                    position.insert([i, j])
                    position.insert([i+1, j])
                    position.insert([i, j+1])
                    position.insert([i+1, j+1])
                }
            }
        }
        for i in Array(position).sorted(by: {$0[1]>$1[1]}) {
            rotArr[i[0]].remove(at: i[1])
            rotArr[i[0]].append("0")
        }
        if !position.isEmpty {
            result += position.count
            position = []
        } else {
            break
        }
    }
    return result
}
