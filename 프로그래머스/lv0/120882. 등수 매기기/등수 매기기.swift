import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    var averages = score.enumerated().map { ((Double($1[0]) + Double($1[1])) / 2, $0, 0) }
    
    var sortedArr = averages.sorted(by: { $0.0 > $1.0 })
    
    for idx in sortedArr.indices {
        if idx == 0 {
            sortedArr[0].2 = 1
        } else {
            if sortedArr[idx-1].0 == sortedArr[idx].0 {
                sortedArr[idx].2 = sortedArr[idx-1].2
            } else {
                sortedArr[idx].2 = idx + 1
            }
        }
    }
    
    var result = averages.map { $0.2 }
    
    sortedArr.forEach {
        result[$0.1] = $0.2
    }
    
    return result
}