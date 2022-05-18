//
//  N개의 최소공배수.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/05/18.
//

import Foundation

func solution(_ arr:[Int]) -> Int {
  let max: Int = arr.max()!
  var boolArr = Array.init(repeating: false, count: arr.count)
  var count: Int = 1
  var boolean: Bool {
    return !(boolArr.filter({$0 == true}).count == arr.count)
  }
  while boolean {
    for (idx, i) in arr.enumerated() {
      if max*count % i == 0 {
        boolArr[idx] = true
      } else {
        count += 1
        break
      }
    }
  }
  return max*count
}
