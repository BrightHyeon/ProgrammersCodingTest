import Foundation

let n = Double(readLine()!)!
let scores = readLine()!.components(separatedBy: " ").map { Int($0)! }

print(
    scores.reduce(0, {
        return $0 + Double($1 * 100) / Double(scores.max()!)
    }) / n
)