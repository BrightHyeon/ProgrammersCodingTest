import Foundation

let N = Int(readLine()!)!
print(pow(2, N) - 1)

func hanoi(_ n: Int, _ from: Int, _ by: Int, _ to: Int) {
    if n == 1 {
        print("\(from) \(to)")
    } else {
        hanoi(n-1, from, to, by)
        print("\(from) \(to)")
        hanoi(n-1, by, from, to)
    }
}

N <= 20 ? hanoi(N, 1, 2, 3) : ()