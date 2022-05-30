//
//  9012 괄호.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/05/29.
//

import Foundation

let count: Int = Int(readLine()!)!
var vps: [String] = []
for _ in 0..<count {
    vps.append(readLine()!)
}
func solution(_ vpsArr: String) {
    var lCount = 0
    var RCount = 0
    for i in vpsArr {
        if i == "(" {
            lCount += 1
        } else if i == ")" {
            RCount += 1
            guard lCount >= RCount else {
                print("NO")
                return
            }
        }
    }
    if lCount == RCount {
        print("YES")
    } else {
        print("NO")
    }
}
for i in vps {
    solution(i)
}

// ) 갯수가 ( 갯수를 넘지않으면된다.
// 최종적으로 ()개수는 같아야한다.

//Stack적 개념으로도 풀 수 있다.

