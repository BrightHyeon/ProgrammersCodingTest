import Foundation

func solution(_ citations: [Int]) -> Int {
    let sortedArr = citations.sorted {
        $0 < $1
    }
    var count = citations.count
    var h = 0
    
    for i in sortedArr {
        if i > count {
            return max(h, count)
        }
        count -= 1
        h = i
    }
    return max(h, count)
}