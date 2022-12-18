import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    var awards = [Int]() {
        didSet {
            if awards.count > k {
                awards.sort(by: { $0 > $1 })
                awards.removeLast()
            }
        }
    }
    
    var result = [Int]()
    
    for i in score {
        awards.append(i)
        result.append(awards.min()!)
    }
    
    return result
}