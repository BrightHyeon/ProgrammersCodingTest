import Foundation

func solution(_ arr: [Int]) -> [Int] {
    var arr = arr
    var two = 1
    
    while two < arr.count {
        two *= 2
    }
    
    while two != arr.count {
        arr.append(0)
    }
    
    return arr
}