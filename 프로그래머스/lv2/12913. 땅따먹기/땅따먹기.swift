import Foundation

func solution(_ land: [[Int]]) -> Int {
    var total: [Int] = [0,0,0,0]
    
    for (idx, i) in land.enumerated() {
        let score = total
        if idx != 0 {
            total[0] = [score[1], score[2], score[3]].max()! + i[0]
            total[1] = [score[0], score[2], score[3]].max()! + i[1]
            total[2] = [score[0], score[1], score[3]].max()! + i[2]
            total[3] = [score[0], score[1], score[2]].max()! + i[3]
        } else {
            for index in 0...3 {
                total[index] += i[index]
            }
        }
    }
    return total.max()!
}