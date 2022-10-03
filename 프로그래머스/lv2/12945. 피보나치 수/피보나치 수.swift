import Foundation

func solution(_ n:Int) -> Int {
  
  var arr: [Int] = [0, 1]
  
  for i in 2...n {
    arr.append((arr[i-2] + arr[i-1])%1234567)
  }
  
 return arr.last!
}