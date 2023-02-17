import Foundation

func solution(_ dots: [[Int]]) -> Int {
    let sorted = dots.sorted { $0[0] < $1[0] }
    return abs(sorted[0][1] - sorted[1][1]) * abs(sorted[0][0] - sorted[2][0])
}