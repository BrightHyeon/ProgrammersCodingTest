import Foundation

func solution(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
    let res = queries.reduce(into: arr) {
        for i in $1[0]...$1[1] where i % $1[2] == 0 {
            $0[i] += 1
        }
    }
    return res
}