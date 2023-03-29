let input = readLine()!.split{$0==" "}.map{Int($0)!}
let N = input[0], M = input[1]
var ans = 0
var arr = Array(repeating: [(String, Bool)](), count: N)
for idx in 1...N {
    let line = Array(readLine()!).map { (String($0), false) }
    arr[idx-1] = line
}
for r in 0..<N {
    for c in 0..<M where !arr[r][c].1 {
        ans += 1
        arr[r][c].1 = true
        if arr[r][c].0 == "-" && c != M-1 {
            var newC = c+1
            while newC != M && arr[r][newC].0 == "-" {
                arr[r][newC].1 = true
                newC += 1
            }
        } else if arr[r][c].0 == "|" && r != N-1 {
            var newR = r+1
            while newR != N && arr[newR][c].0 == "|" {
                arr[newR][c].1 = true
                newR += 1
            }
        }
    }
}
print(ans)

/*
 다른 사람 코드 중 좋은 방향이었던 것.
 let group =
     rows.map { $0.split(separator: "|").count } +
     cols.map { $0.split(separator:  "-").count}
 print(group.reduce(0,+))
 ==> split 접근.
 */

