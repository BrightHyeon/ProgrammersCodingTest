import Foundation

func solution(_ arr: [Int], _ intervals: [[Int]]) -> [Int] {
    let a = intervals[0], b = intervals[1]
    return Array(arr[a[0]...a[1]]) + Array(arr[b[0]...b[1]])
}
