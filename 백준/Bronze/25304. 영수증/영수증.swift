let total = Int(readLine()!)
var calculate = 0

for _ in 1...Int(readLine()!)! {
    let product = readLine()!.split(separator: " ").map { Int($0)! }
    calculate += product[0] * product[1]
}

print(total == calculate ? "Yes" : "No")