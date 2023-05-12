let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1], k = input[2]
var arr = Array(repeating: Array(repeating: 0, count: m), count: n)

for _ in 1...k {
    let position = readLine()!.split(separator: " ").map { Int($0)!-1 }
    arr[position[0]][position[1]] = 1
}

var now = 0, ans = 0

func dfs(_ r: Int, _ c: Int) {
    guard r >= 0, r < n, c >= 0, c < m else { return }
    if arr[r][c] == 1 {
        now += 1
        arr[r][c] = 2
        dfs(r-1, c)
        dfs(r+1, c)
        dfs(r, c-1)
        dfs(r, c+1)
    }
}

for r in 0..<n {
    for c in 0..<m {
        if arr[r][c] == 1 {
            dfs(r, c)
            ans = max(ans, now)
            now = 0
        }
    }
}

print(ans)