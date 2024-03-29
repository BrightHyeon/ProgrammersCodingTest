//
//  멀리 뛰기.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/09/14.
//

import Foundation

func solution2(_ n:Int) -> Int {
    if n == 1 {
        return 1
    } else if n == 2 {
        return 2
    } else {
        return increase(n: n)
    }
}

func increase(n: Int) -> Int {
    var base: [Int] = [1,2]
    for _ in 3...n {
        base.append(base[base.count-2]%1234567+base.last!%1234567)
    }
    return base.last!%1234567
}
