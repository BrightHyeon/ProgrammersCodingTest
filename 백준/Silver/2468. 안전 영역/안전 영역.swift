let n = Int(readLine()!)!
var arr = Array(repeating: Array(repeating: (0, false), count: n), count: n)
var safeZones: [[(Int, Int)]] = [[]]
var graph: [Int: [(Int, Int)]] = [:]

var res = 0

for i in 0..<n {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    for j in 0..<n {
        arr[i][j].0 = line[j]
        safeZones[0].append((i, j))
        graph[line[j], default: []].append((i, j))
    }
}

func setRain(_ n: Int) {
    for i in graph[n]! {
        arr[i.0][i.1].0 = 0
    }
}


var visited: [(Int, Int)] = []

func dfs(_ i: (Int, Int), _ isBool: Bool) {
    guard !(i.0 < 0 || i.1 < 0 || i.0 >= n || i.1 >= n),
          arr[i.0][i.1].1 == isBool else { return }
    arr[i.0][i.1].1.toggle()
    
    if arr[i.0][i.1].0 != 0 {
        visited.append((i))
        dfs((i.0+1, i.1), isBool)
        dfs((i.0-1, i.1), isBool)
        dfs((i.0, i.1+1), isBool)
        dfs((i.0, i.1-1), isBool)
    }
}

func search(_ safeZone: [(Int, Int)]) -> [[(Int, Int)]] {
    var safe: [[(Int, Int)]] = []
    var unchecked = true
    var isBool = false
    for i in safeZone where arr[i.0][i.1].0 != 0 {
        if unchecked {
            unchecked = false
            isBool = arr[i.0][i.1].1
        }
        if arr[i.0][i.1].1 == isBool {
            dfs(i, isBool)
            safe.append(visited)
            visited = []
        }
    }
    return safe
}

func setSafeZone() {
    var zones = [[(Int, Int)]]()
    for i in safeZones {
        zones += search(i)
    }
    safeZones = zones
}

for i in graph.keys.sorted() {
    setRain(i)
    setSafeZone()
    if safeZones.count > res {
        res = safeZones.count
    }
}

print(res == 0 ? 1 : res)