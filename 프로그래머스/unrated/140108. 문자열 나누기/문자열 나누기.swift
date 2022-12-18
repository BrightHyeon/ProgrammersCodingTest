import Foundation

func solution(_ s:String) -> Int {
    var firstLetter = s.first!
    var count = 0
    var result = 0
    
    for (idx, i) in s.enumerated() {
        if i == firstLetter {
            count += 1
        } else {
            count -= 1
        }
        
        if idx != 0 && count == 0 {
            result += 1
            if idx != s.count - 1 {
                firstLetter = Array(s)[idx + 1]
            }
        }
    }
    
    if count != 0 {
        result += 1
    }
    
    return result
}