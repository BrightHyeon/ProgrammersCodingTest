import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    return numlist.map { ($0, abs(n - $0)) }
        .sorted(by: { $0.0 > $1.0 })
        .sorted(by: { $0.1 < $1.1 })
        .map { $0.0 }
}