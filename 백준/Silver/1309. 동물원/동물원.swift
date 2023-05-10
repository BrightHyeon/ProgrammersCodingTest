let n = Int(readLine()!)!
var dp = Array(repeating: [0, 0, 0], count: n)
dp[0] = [1, 1, 1]

for i in 1..<n {
    dp[i][0] = dp[i-1][1] + dp[i-1][2]
    dp[i][1] = dp[i-1][0] + dp[i-1][2]
    dp[i][2] = dp[i-1][0] + dp[i-1][1] + dp[i-1][2]

    dp[i] = dp[i].map { $0 % 9901 }
}

print(dp[n-1].reduce(0, +) % 9901)