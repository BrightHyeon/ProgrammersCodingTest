import Foundation

func solution(_ intStrs: [String], _ k: Int, _ s: Int, _ l: Int) -> [Int] {
    var res = [Int]()
    
    for i in intStrs {
        let num = Int(String(Array(i)[s..<s+l]))!
        if num > k {
            res.append(num)
        }
    }
    
    return res
}
