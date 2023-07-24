import Foundation

func solution(_ myString: String, _ pat: String) -> Int {
    var str = myString
    var res = 0
    
    while str.count >= pat.count {
        if str.suffix(pat.count) == pat {
            res += 1
        }
        
        if str.count >= pat.count {
            str.removeLast()
        }
    }
    
    return res
}