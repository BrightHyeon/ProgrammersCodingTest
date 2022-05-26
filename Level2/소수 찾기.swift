//
//  소수 찾기.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/05/26.
//

//MARK: 소수찾기

func sosuCheck(_ numbers:String) -> Int {
  
  let nums: [Int] = Array(numbers).map({Int(String($0))!})
  var numSet: Array<[Int]> = []
  
  for idx in nums.indices {
    numSet.append([idx]) //0 1 2 3 4
  }
  
  func make(current: [[Int]]) {
    var curr: [[Int]] = []
    for (_, i) in current.enumerated() {
      for (jdx, _) in nums.enumerated() {
        if i.contains(jdx) {
          continue
        } else {
          numSet.append(i+[jdx])
          curr.append(i+[jdx])
        }
      }
    }
    if curr[0].count < numbers.count {
      make(current: curr)
    }
  }
  
  make(current: numSet)
  
  var arr: [[String]] = []
  arr = numSet.map({$0.map {String(nums[$0])}})
  var array: [Int] = []
  array = arr.map({ Int($0.joined())! })
  
  return Set(array.filter({ isSosu($0) && $0 != 1 })).count
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
