//
//  키패드누르기.swift
//  ProgrammersCodingTest
//
//  Created by HyeonSoo Kim on 2022/01/21.
//

import Foundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    
    let num: [[Int]] = [[1,2,3], [4,5,6], [7,8,9], [-8,0,-3]]
    var handLIndex: [Int] = [3, 0], handRIndex: [Int] = [3, 2]
    var result: String = ""
    
    for i in numbers {
        for (idx, j) in num.enumerated() {
            if i == j[0] {
                result += "L"
                handLIndex = [idx, 0]
            } else if i == j[2] {
                result += "R"
                handRIndex = [idx, 0]
            } else if i == j[1] {
                let lDis = abs(idx-handLIndex[0]) + abs(1-handLIndex[1])
                let rDis = abs(idx-handRIndex[0]) + abs(1-handRIndex[1])
                if lDis < rDis {
                    result += "L"
                    handLIndex = [idx, 1]
                } else if lDis > rDis {
                    result += "R"
                    handRIndex = [idx, 1]
                } else if lDis == rDis {
                    if hand == "left" {
                        result += "L"
                        handLIndex = [idx, 1]
                    } else if hand == "right" {
                        result += "R"
                        handRIndex = [idx, 1]
                    }
                }
            }
        }
    }
    return result
}
