let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0], S = input[1]
var arr = readLine()!.split(separator: " ").map { Int($0)! }

var results: [[Int]] = []

func dfs(_ sub: [Int], _ lastIdx: Int) {
    if sub.reduce(0, +) == S { results.append(sub) }
    guard lastIdx < N-1 else { return }
    for i in lastIdx+1..<N {
        dfs(sub + [arr[i]], i)
    }
}

for (idx, i) in arr.enumerated() {
    dfs([i], idx)
}

print(results.count)