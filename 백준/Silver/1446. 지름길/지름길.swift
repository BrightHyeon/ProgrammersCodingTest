let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], d = input[1]
var nodes: [Int] = []
var arr = Array(repeating: Int.max, count: d+1)
var dict: [Int: [(Int, Int)]] = [:]

arr[0] = 0; arr[d] = d

for _ in 1...n {
    let sc = readLine()!.split(separator: " ").map { Int($0)! }
    if sc[1]-sc[0] > sc[2], sc[1] <= d {
        nodes.append(contentsOf: [sc[0], sc[1]])
        arr[sc[0]] = sc[0]; arr[sc[1]] = sc[1]
        dict[sc[0], default: []].append((sc[1], sc[2]))
    }
}

nodes = Array(Set(nodes)).sorted(by: { $0 < $1 })
nodes.append(d)

var pre = 0
for node in nodes {
    arr[node] = min(arr[node], arr[pre] + node - pre)
    if dict.keys.contains(node) {
        for i in dict[node]! {
            arr[i.0] = min(arr[i.0], arr[node] + i.1)
        }
    }
    pre = node
}

print(arr[d])