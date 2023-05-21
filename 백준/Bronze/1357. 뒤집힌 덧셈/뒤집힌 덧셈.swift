import Foundation

let input = readLine()!.components(separatedBy: " ").map { String(String(Int($0)!).reversed()) }
let x = input[0], y = input[1]

print(Int(String(String(Int(x)! + Int(y)!).reversed()))!)