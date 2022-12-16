import Foundation

func solution(_ lines:[[Int]]) -> Int {
    var dict: [Int: Int] = [:]
    
    for line in lines {
        for num in line[0]...line[1]-1 {
            if dict.keys.contains(num) {
                dict[num]! += 1
            } else {
                dict[num] = 1
            }
        }
    }
    
    return dict.filter { $0.value > 1 }.count
}