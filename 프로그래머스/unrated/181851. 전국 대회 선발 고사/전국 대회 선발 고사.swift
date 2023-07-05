import Foundation

func solution(_ rank: [Int], _ attendance: [Bool]) -> Int {
    let rank = rank.enumerated().map { ($0.element, $0.offset) }
    let res = zip(rank, attendance).filter { $0.1 }.sorted { $0.0.0 < $1.0.0 }.map { $0.0.1 }
    return res[0] * 10000 + res[1] * 100 + res[2]
}