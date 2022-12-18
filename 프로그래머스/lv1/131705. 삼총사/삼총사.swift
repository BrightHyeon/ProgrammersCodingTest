import Foundation

func solution(_ number:[Int]) -> Int {
    var result = 0
    
    for (idx, i) in number[0...number.count-3].enumerated() {
        for (jdx, j) in number[idx+1...number.count-2].enumerated() {
            for k in number[idx+jdx+2...number.count-1] {
                if i + j + k == 0 {
                    result += 1
                }
            }
        }
    }
    return result
}