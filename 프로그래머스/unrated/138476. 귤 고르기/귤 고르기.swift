import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var dict: [Int: Int] = [:]
    var count = 0
    var result = 0

    for i in tangerine {
        if dict.keys.contains(i) {
            dict[i]! += 1
        } else {
            dict[i] = 1
        }
    }

    for (_, v) in dict.sorted(by: { $0.value > $1.value }) {
        count += v
        result += 1
        if count >= k {
            break
        }
    }

    return result
}
