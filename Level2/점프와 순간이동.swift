//
//  점프와 순간이동.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/05/31.
//

import Foundation

func jump(_ n:Int) -> Int {
    var num: Int = n
    var result: Int = 0
    
    while num > 0 {
        if num % 2 == 0 {
            num = num / 2
        } else {
            num -= 1
            result += 1
        }
    }
    return result
}
