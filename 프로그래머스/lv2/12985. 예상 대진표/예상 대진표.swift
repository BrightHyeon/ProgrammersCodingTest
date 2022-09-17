import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
    var newA = a
    var newB = b
    var count = 0
    
    while newA != newB {
        count += 1
        newA = (newA-1)/2 + 1
        newB = (newB-1)/2 + 1
    }
    return count
}