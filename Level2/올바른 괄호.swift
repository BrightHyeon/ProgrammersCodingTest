//
//  올바른 괄호.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/09/14.
//

import Foundation

func solution(_ s: String) -> Bool {
    var lCount = 0
    var rCount = 0
    
    for i in s {
        if rCount > lCount {
            return false
        } else {
            if i == "(" {
                lCount += 1
            } else if i == ")" {
                rCount += 1
            }
        }
    }
    return lCount == rCount
}
