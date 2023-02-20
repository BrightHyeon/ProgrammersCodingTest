import Foundation

let chess = readLine()!.components(separatedBy: " ").map { Int($0)! }
let arr = [1, 1, 2, 2, 2, 8]

print(chess.enumerated().map { String(arr[$0.offset] - $0.element) }.joined(separator: " "))