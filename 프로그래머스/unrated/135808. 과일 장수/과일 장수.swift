import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    var result = 0
    var box = [Int]() {
        didSet {
            if box.count == m {
                result += box.last! * m
                box = []
            }
        }
    }
    
    for i in score.sorted().reversed() {
        box.append(i)
    }
    
    return result
}