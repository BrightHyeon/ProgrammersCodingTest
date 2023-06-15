let n = Int(readLine()!)!
var dp = Array(repeating: 0, count: n+1)

func changeIfNeeded(_ idx: Int, _ num: Int) {
    guard idx <= n else { return }
    if dp[idx] == 0 || num < dp[idx] {
        dp[idx] = num
    }
}

for i in 1..<n {
    let num = dp[i]+1
    changeIfNeeded(i * 3, num)
    changeIfNeeded(i * 2, num)
    changeIfNeeded(i + 1, num)
}

print(dp.last!)