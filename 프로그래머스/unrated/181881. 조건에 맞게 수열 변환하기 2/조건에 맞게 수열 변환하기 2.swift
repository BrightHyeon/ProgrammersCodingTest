import Foundation

func solution(_ arr: [Int]) -> Int {
    var arr = arr
    var res = 0
    
    while true {
        var count = 0
        for i in 0..<arr.count {
            if arr[i] >= 50 && arr[i] % 2 == 0 {
                arr[i] /= 2
            } else if arr[i] < 50 && arr[i] % 2 == 1 {
                arr[i] *= 2
                arr[i] += 1
            } else {
                count += 1
            }
        }
        
        if count == arr.count {
            break
        } else {
            res += 1
        }
    }
    
    return res
}