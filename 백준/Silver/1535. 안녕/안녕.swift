let N = Int(readLine()!)!
let h = readLine()!.split(separator: " ").map { Int($0)! }
let p = readLine()!.split(separator: " ").map { Int($0)! }
var res = 0

func dfs(_ limit: Int, _ sum: Int, _ idx: Int) {
    res = max(res, sum)
    if idx < N {
        if limit + h[idx] < 100 {
            dfs(limit + h[idx], sum + p[idx], idx+1)
        }
        dfs(limit, sum, idx+1)
    }
}
dfs(0, 0, 0)
print(res)