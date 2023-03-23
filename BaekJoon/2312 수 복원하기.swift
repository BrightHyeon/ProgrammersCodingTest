// __ 소인수 분해
import Foundation
for _ in 1...Int(readLine()!)! {
    var num = Int(readLine()!)!
    let n = Int(sqrt(Double(num)))
    
    if num == 2 { print("2 1"); continue } else if num == 3 { print("3 1"); continue }
    
    var result: [Int: Int] = [:]
    for i in 2...n {
        while num % i == 0 {
            num /= i
            result[i, default: 0] += 1
        }
    }
    
    result.sorted(by: { $0.key < $1.key }).forEach {
        print("\($0.key) \($0.value)")
    }
    
    if num != 1 {
        print("\(num) 1")
    }
}
// 소인수 분해 __
