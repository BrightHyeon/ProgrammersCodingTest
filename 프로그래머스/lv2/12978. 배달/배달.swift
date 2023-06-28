func solution(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {
    var graph = Array(repeating: Array(repeating: Int.max, count: N), count: N)
    (0..<N).forEach {
        graph[$0][$0] = 0
    }
    
    for i in road {
        let a = i[0]-1, b = i[1]-1, c = i[2]
        graph[a][b] = min(c, graph[a][b])
        graph[b][a] = min(c, graph[b][a])
    }
    
    for k in 0..<N {
        for i in 0..<N {
            for j in 0..<N {
                if graph[i][k] != Int.max, graph[k][j] != Int.max {
                    graph[i][j] = min(graph[i][j], graph[i][k] + graph[k][j])
                }
            }
        }
    }
    return graph[0].filter { $0 <= k }.count
}