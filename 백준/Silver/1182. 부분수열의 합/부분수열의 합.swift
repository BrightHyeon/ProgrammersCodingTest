let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0], S = input[1]
var arr = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
var res = 0

func dfs(_ sum: Int, _ lastIdx: Int) {
    if sum == S {
        res += 1
    } else if (sum > 0 && sum > S) || lastIdx >= N-1 {
        return
    }
    for i in lastIdx+1..<N {
        dfs(sum + arr[i], i)
    }
}

for (idx, i) in arr.enumerated() {
    dfs(i, idx)
}

print(res)