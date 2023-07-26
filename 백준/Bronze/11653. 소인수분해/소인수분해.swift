import Foundation

var num = Int(readLine()!)!
let n = Int(sqrt(Double(num)))

for i in stride(from: 2, to: num, by: 1) {
    while num % i == 0 {
        num /= i
        print(i)
    }
}


if num != 1 {
    print(num)
}