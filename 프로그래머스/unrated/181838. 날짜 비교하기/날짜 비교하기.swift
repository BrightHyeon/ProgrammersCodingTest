import Foundation

func solution(_ date1: [Int], _ date2: [Int]) -> Int {
    let closure = { (date: [Int]) in
        return date[0]*365 + date[1]*30 + date[2]
    }
    return closure(date1) < closure(date2) ? 1 : 0
}