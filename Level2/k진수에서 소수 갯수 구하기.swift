//
//  k진수에서 소수 갯수 구하기.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/06/01.
//

import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    var convertNum: String = String(n, radix: k)
    while convertNum.contains("00") {
        convertNum = convertNum.replacingOccurrences(of: "00", with: "0")
    }
    if convertNum.first == "0" {
        convertNum.removeFirst()
    }
    if convertNum.last == "0" {
        convertNum.removeLast()
    }
    let arr = convertNum.components(separatedBy: "0")
    var result = 0

    for i in arr {
        if isSosu(Int(i)!) {
            result += 1
        }
    }
    
    return result
}

func isSosu(_ num: Int) -> Bool {
  if num == 0 { return false }
  if num == 1 { return false }
  if num == 2 || num == 3 { return true }
  for i in 2...Int(sqrt(Double(num))) {
    if num % i == 0 {
      return false
    }
  }
  return true
}
