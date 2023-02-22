import Foundation

let N = Int(readLine()!)!
let max = N * 2 - 1

if N == 1 {
    print("*")
} else {
    for i in 1...N-1 {
        print(String(repeating: " ", count: (max-(i*2-1))/2) + String(repeating: "*", count: i*2-1))
    }
    print(String(repeating: "*", count: max))
    for i in (1...N-1).reversed() {
        print(String(repeating: " ", count: (max-(i*2-1))/2) + String(repeating: "*", count: i*2-1))
    }
}