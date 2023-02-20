let now = readLine()!.split(separator: " ").map { Int($0)! }
let time = Int(readLine()!)!
let after = now[0] * 60 + now[1] + time

print("\(after / 60 % 24) \(after % 60)")