let input = readLine()!.split{$0==" "}.map{Int($0)!}
let N = input[0], M = input[1]
var res = 0
var arr = readLine()!.split(separator: " ").map({Int($0)!})
for (idx, i) in arr.enumerated() {
    if i > M { continue }
    var cnt = i, index = idx
    while cnt < M {
        if index == N-1 { break }
        index += 1
        cnt += arr[index]
    }
    if cnt == M {
        res += 1
    }
}
print(res)
