//
//  기능개발.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/06/03.
//

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var newPro: [Int] = progresses.reversed()
    let newSpe: [Int] = speeds.reversed()
    var result: [Int] = []
    
    while !newPro.isEmpty {
        for idx in newPro.indices {
            newPro[idx] += newSpe[idx]
        }
        var count = 0
        while true {
            if !newPro.isEmpty {
                if newPro.last! >= 100 {
                    newPro.removeLast()
                    count += 1
                    print(count)
                } else {
                    break
                }
            } else {
                break
            }
        }
        if count != 0 {
            result.append(count)
        }
    }
    return result
}
