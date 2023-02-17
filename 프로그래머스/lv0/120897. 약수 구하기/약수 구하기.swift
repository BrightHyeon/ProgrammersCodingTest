import Foundation

func solution(_ n: Int) -> [Int] {
    return (1...Int(sqrt(Double(n)))).reduce(into: [Int]()) {
        if n % $1 == 0 {
            $1 == n / $1 ? ($0 += [$1]) : ($0 += [$1, n / $1])
        }
    }.sorted()
}