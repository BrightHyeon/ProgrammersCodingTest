import Foundation

func solution(_ a: Int, _ d: Int, _ included: [Bool]) -> Int {
    var res = 0
    for (idx, i) in included.enumerated() where i {
        res += a + d * idx
    }
    return res
}