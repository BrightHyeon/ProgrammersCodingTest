import Foundation

func solution(_ strArr: [String]) -> Int {
    return strArr.reduce(into: [Int: Int]()) {
        $0[$1.count, default: 0] += 1
    }.values.max()!
}
