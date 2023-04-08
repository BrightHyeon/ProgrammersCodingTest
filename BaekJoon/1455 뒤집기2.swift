let N = readLine()!.split{$0==" "}.map{Int($0)!}
var arr = (1...N[0]).map { _ in Array(readLine()!).map { Int(String($0))! } }
var ans = 0
func reverse(_ r: Int, _ c: Int) {
    for i in 0...r {
        for j in 0...c {
            arr[i][j] = arr[i][j] == 0 ? 1 : 0
        }
    }
}
for r in arr.indices.reversed() {
    for c in arr[r].indices.reversed() {
        if arr[r][c] == 1 {
            reverse(r, c)
            ans += 1
        }
    }
}
print(ans)

