import Foundation

func solution(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
    return queries.reduce(into: arr) { $0.swapAt($1[0], $1[1]) }
}