import Foundation

func solution(_ n: Int, _ m: Int, _ section: [Int]) -> Int {
    var section = section
    var res = 0
    
    while !section.isEmpty {
        res += 1
        let l = section.removeFirst()
        let to = l + m - 1
        
        while true {
            if !section.isEmpty {
                if section.first! <= to {
                    section.removeFirst()
                } else {
                    break
                }
            } else {
                break
            }
        }
    }
    
    return res
}