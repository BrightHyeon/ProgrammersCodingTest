//
//  이진 변환 반복하기.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/06/03.
//

import Foundation

func solution(_ s:String) -> [Int] {
    var count = 0
    var zeroCount = 0
    var str = s
    
    while str != "1" {
        for i in str {
            if i == "0" {
                zeroCount += 1
            }
        }
        str = str.split(separator: "0").map({String($0)}).joined(separator: "")
        str = String(str.count, radix: 2)
        count += 1
    }

    return [count, zeroCount]
}
