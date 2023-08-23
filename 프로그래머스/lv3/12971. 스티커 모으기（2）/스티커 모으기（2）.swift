import Foundation

func solution(_ sticker: [Int]) -> Int{
    guard sticker.count != 1 else { return sticker[0] }
    var dp1 = sticker, dp2 = sticker
    dp1.removeLast()
    dp2.removeFirst()
    dp1.insert(contentsOf: [0, 0], at: 0)
    dp2.insert(contentsOf: [0, 0], at: 0)
    
    for i in 2..<dp1.count {
        dp1[i] = max(dp1[i-1], dp1[i-2]+dp1[i])
    }

    for i in 2..<dp2.count {
        dp2[i] = max(dp2[i-1], dp2[i-2]+dp2[i])
    }
    
    return max(dp1.last!, dp2.last!)
}