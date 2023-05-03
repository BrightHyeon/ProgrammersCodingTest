let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0], M = input[1]

var edges: [[Int]] = []

for _ in 1...N-1 {
    let uvw = readLine()!.split(separator: " ").map { Int($0)! }
    edges.append(uvw)
}

var graph = Array(repeating: Array(repeating: Int.max, count: N), count: N)

for edge in edges {
    let u = edge[0]-1, v = edge[1]-1, w = edge[2]
    graph[u][v] = w
    graph[v][u] = w
}

func floyd(_ graph: [[Int]]) -> [[Int]] {
    var d = graph
    let n = graph.count
    
    for k in 0..<n {
        for i in 0..<n {
            for j in 0..<n {
                if d[i][k] != Int.max && d[k][j] != Int.max {
                    d[i][j] = min(d[i][j], d[i][k] + d[k][j])
                }
            }
        }
    }
    return d
}

graph = floyd(graph)

for _ in 1...M {
    let uv = readLine()!.split(separator: " ").map { Int($0)!-1 }
    let u = uv[0], v = uv[1]
    print(graph[u][v])
}