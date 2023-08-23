import Foundation

func solution(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
    queries.reduce(into: arr) {
        for i in $1[0]...$1[1] {
            $0[i] += 1
        }
    }
}