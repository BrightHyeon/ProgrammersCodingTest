//
//  큰 수 만들기.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/05/24.
//

import Foundation

func solution(_ number:String, _ k:Int) -> String {

  let arr: [Int] = Array(number).map({Int(String($0))!})
  var newArr: [Int] = []
  var k: Int = k
  let ct = number.count //이렇게 변수에 고정값으로 저장해놓고 쓰는게 좋음. 그게 아니면 계속 count O(n)만큼 연산해야하니.

  for i in arr {
    if newArr.isEmpty {
      newArr.append(i)
    } else {
      while (newArr.last! < i) && k > 0 {
        newArr.removeLast()
        k -= 1
        if newArr.isEmpty || k <= 0 {
          break
        }
      }
      newArr.append(i)
      if newArr.count == ct - k {
        break
      }
    }
  }
  return newArr.map({String($0)}).joined(separator: "")
}

// 비효율적이었으. First
//  var nums: [Int] = []
//  for (idx, i) in arr.enumerated() {
//    if idx == k {
//      nums.append(Int(String(i))!)
//      break
//    }
//    nums.append(Int(String(i))!)
//  }
//
//  let max = nums.max()!
//  print(max)
//
//  let index = arr.lastIndex(where: {  $0 == max })

// 비효율 2 Second
//let range = number.count - k
//let arr = Array(number).map {
//  Int(String($0))!
//}
//let max = arr[0...k].max()!
//let index = arr.firstIndex(where: { $0 == max })! //여기부터 완.탐
//
//if arr[index...arr.count-1].count == range {
//  return arr.map({ String($0) }).joined(separator: "")
//} else {
//  for i in arr[index...arr.count-1] {
//    print(i)
//
//  }
//}

//import Foundation
////Third
//func solution(_ number:String, _ k:Int) -> String {
//
//  let arr = Array(number).map({ Int(String($0))! }) //number를 [Int]로 나타낸 것.
//  var result: String = ""
//
//  func checkMax(startIdx: Int, newK: Int) {
//    let max = arr[startIdx...startIdx + newK].max()! //해당범위 안의 max값.
//    let index = arr[startIdx...startIdx + newK].firstIndex(where: {$0 == max})! //해당 max의 index.
//    result.append(String(max))
//    let kArr = Array(arr[startIdx...startIdx + newK])
//    let kIndex = kArr.firstIndex(where: {$0 == max})! //k용.
//
//    if result.count < number.count - k {
//      if index + 1 <= number.count - 1 {
//        checkMax(startIdx: index + 1, newK: newK - kIndex)
//      }
//    }
//  }
//  checkMax(startIdx: 0, newK: k)
//  return result
//}
