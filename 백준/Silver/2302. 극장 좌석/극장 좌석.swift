let n = Int(readLine()!)!, m = Int(readLine()!)!
var sections = [Int]()
var arr = Array(repeating: 0, count: n+1)
arr[0] = 1; arr[1] = 1
for i in 1..<n {
    arr[i+1] = arr[i-1] + arr[i]
}

var vip = 0
for _ in 0..<m {
    let num = Int(readLine()!)!
    sections.append(num - vip - 1)
    vip = num
}

sections.append(n - vip)
print(sections.reduce(1) { $0 * arr[$1] })