let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1], v = input[2]-1

var graph = Array(repeating: Array(repeating: 0, count: n), count: n)
var res = [Int]()

var visited = Set<Int>()
var needVisit = [v]

for _ in 0..<m {
    let e = readLine()!.split(separator: " ").map { Int($0)!-1 }
    graph[e[0]][e[1]] = 1
    graph[e[1]][e[0]] = 1
}

func dfs(_ start: Int) {
    res.append(start+1)
    visited.insert(start)
    for (idx, i) in graph[start].enumerated() where i == 1 {
        if !visited.contains(idx) {
            dfs(idx)
        }
    }
}

func bfs() {
    while !needVisit.isEmpty {
        let node = needVisit.removeFirst() // 0
        res.append(node+1)
        for (idx, i) in graph[node].enumerated() where i == 1 && !visited.contains(idx) {
            needVisit.append(idx)
            visited.insert(idx)
        }
    }
}

dfs(v)
print(res.map { String($0) }.joined(separator: " "))

res.removeAll()
visited = [v]

bfs()
print(res.map { String($0) }.joined(separator: " "))