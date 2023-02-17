import Foundation

func solution(_ n: Int) -> Int {
    var sqrtNum = n == Int(sqrt(Double(n))) * Int(sqrt(Double(n))) ? 1 : 0
    return (1...Int(sqrt(Double(n)))).filter { n % $0 == 0 }.count * 2 - sqrtNum
}