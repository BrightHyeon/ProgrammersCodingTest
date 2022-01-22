//
//  로또의 최고 순위와 최저 순위.swift
//  ProgrammersCodingTest
//
//  Created by HyeonSoo Kim on 2022/01/22.
//

import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    
    let result: [Int:Int] = [6:1, 5:2, 4:3, 3:4, 2:5, 1:6, 0:6] //좌: 맞춘 갯수, 우: 순위
    
    let min = lottos.filter{win_nums.contains($0)}.count
    let max = lottos.filter{win_nums.contains($0)}.count + lottos.filter{$0==0}.count
    
    return [result[max]!, result[min]!]
}
