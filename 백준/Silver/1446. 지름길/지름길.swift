let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], d = input[1]
var nodes: [[Int]] = []
var arr = Array(repeating: d, count: d+1)

for _ in 1...n {
    let sc = readLine()!.split(separator: " ").map { Int($0)! }
    if sc[1]-sc[0] > sc[2], sc[1] <= d {
        nodes.append([sc[0], sc[1], sc[2]])
        nodes.append([sc[1], sc[1], 0])
        arr[sc[0]] = sc[0]; arr[sc[1]] = sc[1]
    }
}
nodes.sort(by: { $0[0] < $1[0] })
nodes.append([d, d, 0])

var pre = 0
for node in nodes {
    arr[node[0]] = min(arr[node[0]], arr[pre] + node[0] - pre)
    arr[node[1]] = min(arr[node[1]], arr[node[0]]+node[2])
    pre = node[0]
}
print(arr[d])