import Foundation

func solution(_ s: String) -> Int {
    let str = s.map { String($0) }
    
    var maxLength = 1
    
    for i in 0..<str.count-1 {
        for j in stride(from: str.count-1, to: i+1, by: -1) {
            var length = j-i+1
            if length <= maxLength {
                continue
            }
            
            let middle = length%2 != 0 ? length/2 - 1 : length/2
            
            for m in 0...middle {
                if str[i+m] != str[j-m] {
                    length += 1
                    break
                }
            }
            
            if length == j-i+1 {
                maxLength = max(maxLength, length)
            }
        }
    }
    
    return maxLength
}