let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var arr = (0..<n).map { _ in Array(readLine()!).map { (Int(String($0))!, 0) }}
arr[0][0].1 = 1

var nvq = [[0, 0]]

while !nvq.isEmpty {
    let node = nvq.removeFirst()
    let nv = [[node[0]+1, node[1]], [node[0]-1, node[1]], [node[0], node[1]+1], [node[0], node[1]-1]]
    
    for i in nv where i[0] >= 0 && i[1] >= 0 && i[0] < n && i[1] < m {
        let target = arr[i[0]][i[1]]
        if target.1 == 0 && target.0 == 1 {
            nvq.append(i)
            arr[i[0]][i[1]].1 = (arr[node[0]][node[1]].1 + 1)
        }
    }
}

print(arr[n-1][m-1].1)