let n = Int(readLine()!)!
var dict: [String: Int] = [:]
var checked: [Int: Bool] = [:]

for i in 0..<n {
    dict[readLine()!] = i
    checked[i] = false
}

var arr = (0..<n).map { _ in dict[readLine()!]! }
var min = 0, res = 0

for i in arr {
    checked[i] = true
    if i > min {
        res += 1
    } else {
        while checked[min]! {
            min += 1
            if min >= n {
                break
            }
        }
    }
}

print(res)