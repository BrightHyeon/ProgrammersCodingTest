import Foundation

let dices = readLine()!.components(separatedBy: " ").map { Int($0)! }
var dict: [Int: Int] = [:]
dices.forEach { dict[$0, default: 0] += 1 }
let sort = dict.sorted { ($0.value, $0.key) < ($1.value, $1.key) }

if sort.last!.value == 3 {
    print(sort.last!.key * 1000 + 10000)
} else if sort.last!.value == 2 {
    print(sort.last!.key * 100 + 1000)
} else {
    print(sort.last!.key * 100)
}