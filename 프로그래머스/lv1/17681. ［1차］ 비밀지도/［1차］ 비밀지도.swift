import Foundation

func solution(_ n: Int, _ arr1: [Int], _ arr2: [Int]) -> [String] {
    var arr = Array(repeating: "", count: n)
    
    for i in 0..<n {
        var a = Array(String(arr1[i], radix: 2))
        var b = Array(String(arr2[i], radix: 2))
        for _ in 0..<n-a.count {
            a.insert(" ", at: 0)
        }
        for _ in 0..<n-b.count {
            b.insert(" ", at: 0)
        }
        
        for j in 0..<n {
            if a[j] == "1" || b[j] == "1" {
                arr[i] += "#"
            } else {
                arr[i] += " "
            }
        }
    }
    return arr
}