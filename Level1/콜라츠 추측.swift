//
//  콜라츠 추측.swift
//  ProgrammersCodingTest
//
//  Created by HyeonSoo Kim on 2022/01/26.
//

import Foundation

func solution(_ num:Int) -> Int {
    
    var number = num, count = 0
    
    while number > 1 {
        number = number % 2 == 0 ? number / 2 : (number * 3) + 1
        count += 1
        if count == 500 {
            return -1
        }
    }
    return count
}
