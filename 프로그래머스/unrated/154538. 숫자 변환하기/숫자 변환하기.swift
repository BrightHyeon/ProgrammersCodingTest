import Foundation

func solution(_ x: Int, _ y: Int, _ n: Int) -> Int {
    var dp = Array(repeating: 0, count: y+1)
    
    func operate(_ idx: Int) {
        let basic = dp[idx]+1
        if idx * 2 <= y {
            dp[idx*2] = (dp[idx*2] == 0 ? basic : min(dp[idx*2], basic))
        }
        if idx * 3 <= y {
            dp[idx*3] = (dp[idx*3] == 0 ? basic : min(dp[idx*3], basic))
        }
        if idx + n <= y {
            dp[idx+n] = (dp[idx+n] == 0 ? basic : min(dp[idx+n], basic))
        }
    }
    
    operate(x)
    
    for i in x...y where dp[i] != 0 {
        operate(i)
    }
    
    if x != y {
        return dp.last! == 0 ? -1 : dp.last!
    } else {
        return 0
    }
}