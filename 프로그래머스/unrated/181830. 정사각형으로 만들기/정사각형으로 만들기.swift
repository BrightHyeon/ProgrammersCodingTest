import Foundation

func solution(_ arr: [[Int]]) -> [[Int]] {
    let n = max(arr.count, arr[0].count)
    var arr = arr
    
    for i in 0..<arr.count {
        while arr[i].count < n {
            arr[i].append(0)
        }
    }
    
    while arr.count < n {
        arr.append(Array(repeating: 0, count: n))
    }
    
    return arr
}