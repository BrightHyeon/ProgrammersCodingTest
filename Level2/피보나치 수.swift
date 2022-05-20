//
//  피보나치 수.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/05/20.
//

//시간초과.
//func solution(_ n:Int) -> Int {
//
//  return fibo(n)
//}
//
//func fibo(_ num: Int) -> Int {
//  if num == 0 {
//    return 0
//  } else if num == 1 {
//    return 1
//  } else {
//    return fibo(num-2) + fibo(num-1)
//  }
//}
//피보나치를 재귀로 표현하려하면 오래 걸린다.O(2의 n승). 시간초과가 난다.

//재귀?가 아닌 for 문으로 접근하는 것이 더 빠르지않을까. 앞에서부터 가는거지. dp개념.
import Foundation

func solution(_ n:Int) -> Int {
  
  var arr: [Int] = [0, 1]
  
  for i in 2...n {
    arr.append((arr[i-2] + arr[i-1]) % 1234567)
  }
  
 return arr.last!
}
//피보나치는 수가 기하학적으로 커지기 때문에, Int의 최대 범위까지 고려를 해줘야한다.

print(solution(50000))
