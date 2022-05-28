//
//  피로도.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/05/28.
//

import Foundation

//MARK: level2. 피로도.
func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
  
  var allCases: [[[Int]]] = []
  var result = 0
  var results: [Int] = []
  var piro = k

  func permuteWirth(_ a: [[Int]], _ n: Int) {
    if n == 0 {
      allCases.append(a)
    } else {
      var a = a
      permuteWirth(a, n - 1)
      for i in 0..<n {
        a.swapAt(i, n)
        permuteWirth(a, n - 1)
        a.swapAt(i, n)
      }
    }
  }
  permuteWirth(dungeons, dungeons.count-1) //allCases 생성.
  
  for i in allCases {
    for j in i {
      if piro >= j[0] {
        result += 1
        piro -= j[1]
      }
    }
    results.append(result)
    result = 0
    piro = k
  }
  return (results.max()! >= dungeons.count) ? dungeons.count : results.max()!
}
