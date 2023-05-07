let N = Int(readLine()!)!
let h = readLine()!.split(separator: " ").map { Int($0)! }
let p = readLine()!.split(separator: " ").map { Int($0)! }
var people = [(Int, Int)](), res = 0

for i in 0..<N {
    people.append((h[i], p[i]))
}

func dfs(_ limit: Int, _ sum: Int, _ idx: Int) {
    guard limit < 100 else { return }
    res = max(res, sum)
    guard idx < N else { return }
    dfs(limit, sum, idx+1)
    dfs(limit + people[idx].0, sum + people[idx].1, idx+1)
}
dfs(0, 0, 0)
print(res)