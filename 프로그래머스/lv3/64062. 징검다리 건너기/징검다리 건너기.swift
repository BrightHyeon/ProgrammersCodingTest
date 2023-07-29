import Foundation

func solution(_ stones: [Int], _ k: Int) -> Int {
    var min = 1, max = 200000000
    var idx = 0
    
    while min != max {
        let num = (min + max) / 2 // 시작은 1억...
        var count = 0
        var needDown = false
        
        for i in idx..<stones.count {
            if stones[i] - num <= 0 { // 모두 소진했다면...
                count += 1
            } else {
                count = 0
            }
            
            if count >= k { // limit 초과...
                idx = i-k+1
                needDown = true
                break
            }
        }
        
        if needDown { // 중간값보다 낮춰야할때...
            max = num
        } else { // 높여야할때...
            min = num
            idx = 0
        }
        
        if min == max-1 {
            break
        }
    }
    
    return max
}