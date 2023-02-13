import Foundation

func solution(_ numbers:[Int]) -> Int {
    let arr = numbers.sorted()
    return max(arr[0]*arr[1], arr.last!*arr[arr.count-2])
}