let n = Int(readLine()!)!
var arr = Array(repeating: [Int](), count: n)

for i in 0..<n {
    arr[i] = readLine()!.split(separator: " ").map { Int($0)! }
}

for i in 1..<n {
    for j in 0...i {
        let x = j-1 >= 0 ? arr[i-1][j-1] : 0
        let y = j < i ? arr[i-1][j] : 0
        arr[i][j] += max(x, y)
    }
}

print(arr[n-1].max()!)