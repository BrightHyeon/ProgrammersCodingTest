//
//  괄호 회전하기.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/09/11.
//

// MARK: - Insight
/*
 1. 문자 제거하며 반환
 let 변수 = 문자열.removeFirst() - 문자열에서도 해당위치 문자가 제거됨과 동시에 변수에 해당Character가 할당됨
 */

import Foundation

func solution(_ s: String) -> Int {
    var str = s
    var count: Int = 0
    func rotate() {
        let first = str.removeFirst()
        str.append(first)
        if isRight(str) {
            count += 1
        }
    }
    for _ in 0...s.count-1 {
        rotate()
    }
    return count
}

func isRight(_ str: String) -> Bool {
    var stack: String = ""
    let cases: [Character: Character] = ["[":"]","{":"}","(":")"]
    for i in str {
        if stack.isEmpty && cases.values.contains(i) {
            return false
        } else {
            if cases.keys.contains(i) {
                stack.append(i)
            } else {
                if cases[stack.last!] == i {
                    let _ = stack.popLast()
                } else {
                    return false
                }
            }
        }
    }
    return stack.count == 0 ? true : false
}
