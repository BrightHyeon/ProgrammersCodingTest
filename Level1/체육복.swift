//
//  체육복.swift
//  ProgrammersCodingTest
//
//  Created by HyeonSoo Kim on 2022/01/26.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    
    var reser = reserve.filter { !lost.contains($0) }.sorted()
    var los = lost.filter { !reserve.contains($0) }.sorted()

    for (index, i) in los.enumerated() {
        for (idx, j) in reser.enumerated() {
            if j == i+1 || j == i-1 {
                los[index] = -1
                reser[idx] = -1
                break
            }
        }
    }
    return n - los.filter { $0 != -1 }.count
}
