import Foundation

let line = readLine()!.components(separatedBy: " ").map { Int($0)! }
print(line.reduce(0, +))