import Foundation

func solution(_ n:Int) -> Int {
    return Int(sqrt(Double(n))) * Int(sqrt(Double(n))) == n ? 1 : 2
}