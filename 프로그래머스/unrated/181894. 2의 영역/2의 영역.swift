import Foundation

func solution(_ arr: [Int]) -> [Int] {
    if let idx = arr.firstIndex(of: 2) {
        return Array(arr[idx...arr.lastIndex(of: 2)!])
    } else {
        return [-1]
    }
}