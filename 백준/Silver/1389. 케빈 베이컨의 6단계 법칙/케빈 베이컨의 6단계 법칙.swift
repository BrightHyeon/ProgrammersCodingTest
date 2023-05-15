let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var arr = Array(repeating: Array(repeating: Int.max, count: n), count: n)
(0..<n).forEach { arr[$0][$0] = 0 }

for _ in 1...m {
    let relation = readLine()!.split(separator: " ").map { Int($0)!-1 }
    let a = relation[0], b = relation[1]
    arr[a][b] = 1
    arr[b][a] = 1
}

for k in 0..<n {
    for i in 0..<n {
        for j in 0..<n {
            if arr[i][k] != Int.max && arr[k][j] != Int.max {
                arr[i][j] = min(arr[i][j], arr[i][k] + arr[k][j])
            }
        }
    }
}

print(arr.enumerated().reduce(into: [0, Int.max]) {
    let sum = $1.element.reduce(0, +)
    if sum < $0[1] {
        $0[1] = sum; $0[0] = $1.offset + 1
    }
}[0])