import Foundation

func solution(_ rank: [Int], _ attendance: [Bool]) -> Int {
    let list = zip(rank, attendance).enumerated().filter { $0.element.1 }.sorted{ $0.element.0 < $1.element.0 }.map { $0.offset }
    return 10000*list[0] + 100*list[1] + list[2]
}