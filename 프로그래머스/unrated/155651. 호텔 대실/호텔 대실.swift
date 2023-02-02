import Foundation

func solution(_ book_time:[[String]]) -> Int {
    var rooms: [Int] = []
    let times: [[Int]] = book_time.map {
        let startTime = $0[0].components(separatedBy: ":").map { Int($0)! }
        let endTime = $0[1].components(separatedBy: ":").map { Int($0)! }
        
        return [startTime[0] * 60 + startTime[1], endTime[0] * 60 + endTime[1]]
    }
    
    let sorted: [[Int]] = times.sorted { $0[0] < $1[0] }
    
    for i in sorted {
        if rooms.isEmpty {
            rooms.append(i[1] + 10)
        } else {
            if rooms.min() ?? 0 > i[0] {
                rooms.append(i[1] + 10)
            } else {
                let idx = rooms.firstIndex(of: rooms.min()!)!
                rooms[idx] = i[1] + 10
            }
        }
    }
    return rooms.count
}