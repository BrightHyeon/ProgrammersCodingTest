import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var cokeCount = n
    var result = 0
    
    while cokeCount >= a {
        let div = cokeCount / a
        result += div * b
        cokeCount -= div * a
        cokeCount += div * b
    }
    
    return result
}