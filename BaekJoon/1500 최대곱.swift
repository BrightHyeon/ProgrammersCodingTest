let arr = readLine()!.split{$0==" "}.map{Int($0)!}
let s = arr[0], k = arr[1]
print((1...k).reduce(1) { $0 * (s/k + ($1 <= s%k ? 1 : 0)) })
