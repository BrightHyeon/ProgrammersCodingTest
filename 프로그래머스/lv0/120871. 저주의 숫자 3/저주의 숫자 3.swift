import Foundation

func solution(_ n:Int) -> Int {
    var num = 1, count = 1
    
    while true {
        if count % 3 == 0 || String(count).contains("3") {
            count += 1
        } else {
            if num == n {
                return count
            } else {
                num += 1
                count += 1
            }
        }
    }
}