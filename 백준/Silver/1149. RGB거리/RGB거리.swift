let n = Int(readLine()!)!
var arr = Array(repeating: [0,0,0], count: n)
for i in 0..<n {
    let ip = readLine()!.split(separator: " ").map { Int($0)! }
    if i != 0 {
        let r = arr[i-1][0], g = arr[i-1][1], b = arr[i-1][2]
        arr[i][0] = min(g, b) + ip[0]
        arr[i][1] = min(r, b) + ip[1]
        arr[i][2] = min(r, g) + ip[2]
    } else {
        for j in 0...2 {
            arr[i][j] = ip[j]
        }
    }
}
print(arr[n-1].min()!)