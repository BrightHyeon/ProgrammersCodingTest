import Foundation

func solution(_ board:[[Int]]) -> Int {
  let row = board.count
  let column = board[0].count
  var rect = board
  
  for i in 1..<row {
    for j in 1..<column  {
      if rect[i][j] != 0 {
        rect[i][j] = min(rect[i-1][j], rect[i][j-1], rect[i-1][j-1]) + 1
      }
    }
  }
  let width = rect.map{ $0.max()! }.max()!
  return width * width
}