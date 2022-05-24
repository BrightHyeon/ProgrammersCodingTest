//
//  가장 큰 정사각형 찾기.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/05/24.
//

//MARK: 규칙을 찾고나니 쉬웠다.
import Foundation

func solution(_ board:[[Int]]) -> Int {
  let row = board.count
  let column = board[0].count
  var rect = board
  
  for i in 1..<row {
    for j in 1..<column {
      if rect[i][j] != 0 {
        rect[i][j] = min(rect[i-1][j], rect[i][j-1], rect[i-1][j-1]) + 1
      }
    }
  }
  let width = rect.map{ $0.max()! }.max()!
  return width * width
}

//MARK: - 아래 방법들은 너무 for문을 많이도는 느낌이다. 거의 n의 3~5제곱.

//First
//func solution(_ board:[[Int]]) -> Int {
//
//  var result: Int = 0
//
//  func rect(row: Int, column: Int, width: Int) {
//    var range: Int = width
//
//    guard row + range <= board.count - 1 else { return }
//    guard column + range <= board[0].count - 1 else { return }
//
//    for i in 0...range { //MARK: O(n2)
//      for j in 0...range {
//        guard board[row+j][column+i] == 1 else { return }
//      }
//    }
//
//    range += 1
//
//    if result < range * range {
//      result = range * range
//    }
//    rect(row: row, column: column, width: range)
//  }
//
//  for i in 0...board.count-1 {
//    for j in 0...board[0].count-1 {
//      if board[i][j] != 0 {
//        rect(row: i, column: j, width: 1)
//        if result == 0 {
//          result = 1
//        }
//      }
//    }
//  }
//  return result
//}

//Second
//func solution(_ board:[[Int]]) -> Int {
//
//  var result: Int = 0
//
//  func rect(row: Int, column: Int, width: Int) {
//    var range: Int = width
//
//    guard row + range <= board.count - 1 else { return }
//    guard column + range <= board[0].count - 1 else { return }
//
//    for i in 0...range { //MARK: O(n) 첫 코드에선 이 for블럭이 n제곱이었는데, 이런식으로 테두리로만 체크하니 확실히 빨라짐. but 문제가 원하는 속도는 아님.
//      guard board[row+range][column+i] == 1 else { return }
//    }
//    for i in 0...range {
//      guard board[row+i][column+range] == 1 else { return }
//    }
//
//    range += 1
//
//    if result < range * range {
//      result = range * range
//    }
//    rect(row: row, column: column, width: range)
//  }
//
//  for i in 0...board.count-1 {
//    for j in 0...board[0].count-1 {
//      if board[i][j] != 0 {
//        rect(row: i, column: j, width: 1)
//        if result == 0 {
//          result = 1
//        }
//      }
//    }
//  }
//  return result
//}
