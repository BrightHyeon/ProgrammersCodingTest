import Foundation

func solution(_ arr: [Int], _ query: [Int]) -> [Int] {
    var min = 0, max = arr.count-1
    
    for (idx, i) in query.enumerated() {
        if idx % 2 == 0 {
            max = min + i
        } else {
            min += i
        }
    }
    
    return Array(arr[min...max])
}