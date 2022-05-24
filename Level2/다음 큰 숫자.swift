//
//  다음 큰 숫자.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/05/24.
//

import Foundation

func solution(_ n:Int) -> Int {
  var final = n + 1
  while true {
    if oneCount(n) != oneCount(final) {
      final += 1
      continue
    } else {
      break
    }
  }
  return final
}
func oneCount(_ num: Int) -> Int {
  let arr = String(num, radix: 2)
  var count = 0
  for i in arr {
    if i == "1" {
      count += 1
    }
  }
  return count
}
//1차 시도 때 이거를 Array로 묶었는데, 그러면 그만큼 시간복잡도 올라가니 시간 초과남. 스트링도 순환가능해서 할 필요없음.
