//
//  방문 길이.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/05/24.
//

import Foundation

func solution(_ dirs:String) -> Int {

  var position: [Int] = [0, 0]
  var intSet: Set<Set<[Int]>> = []

  for i in dirs {
    switch i {
    case "U":
      if position[1] != 5 {
        let current = position
        position[1] += 1
        intSet.insert([current, position])
      }
    case "D":
      if position[1] != -5 {
        let current = position
        position[1] -= 1
        intSet.insert([current, position])
      }
    case "R":
      if position[0] != 5 {
        let current = position
        position[0] += 1
        intSet.insert([current, position])
      }
    case "L":
      if position[0] != -5 {
        let current = position
        position[0] -= 1
        intSet.insert([current, position])
      }
    default:
      break
    }
  }
  return intSet.count
}
