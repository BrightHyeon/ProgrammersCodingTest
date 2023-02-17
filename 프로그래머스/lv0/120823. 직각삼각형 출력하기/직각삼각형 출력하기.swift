import Foundation

let n = Int(readLine()!)!

for i in 1...n {
    var result = ""
    for _ in 1...i {
        result += "*"
    }
    print(result)
}