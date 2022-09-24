import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
  var arrr: [[Int]] = Array.init(repeating: [], count: arr1.count)
  var num: Int = 0
  for (index, i) in arr1.enumerated() {
    for k in 0...arr2[0].count-1 {
      for (idx, j) in i.enumerated() {
        num += j*arr2[idx][k]
      }
      arrr[index].append(num)
      num = 0
    }
  }
  return arrr
}