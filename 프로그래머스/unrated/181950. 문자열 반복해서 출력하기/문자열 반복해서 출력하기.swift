import Foundation

let input = readLine()!.components(separatedBy: " ")
let (str, n) = (input[0], Int(input[1])!)
for _ in 1...n {
    print(str, terminator: "")
}