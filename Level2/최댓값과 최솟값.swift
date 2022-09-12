//
//  최댓값과 최솟값.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/09/12.
//

// level2. 최댓값과 최솟값
import Foundation

func solution(_ s:String) -> String {
    let arr = s.components(separatedBy: " ").map{Int($0)!}
    var min: Int?
    var max: Int?
    for num in arr {
        if min == Optional(nil) || num < min ?? 0 {
            min = num
        }
        if max == Optional(nil) || num > max ?? 0 {
            max = num
        }
    }
    return "\(min!) \(max!)"
}

/*
 위는 속도는 좀더 빠른듯하나 코드 공간을 더 쓴다.
 아래는 코드가 간결하다는 장점.
 */

func upgradeSolution(_ s:String) -> String {
    let arr = s.components(separatedBy: " ").map{Int($0)!}.sorted { $0 < $1 }
    return "\(arr.first!) \(arr.last!)"
}

print(upgradeSolution("1 2 3 4"))
