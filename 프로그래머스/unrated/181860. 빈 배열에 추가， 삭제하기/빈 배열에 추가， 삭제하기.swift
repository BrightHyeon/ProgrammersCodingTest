import Foundation

func solution(_ arr: [Int], _ flag: [Bool]) -> [Int] {
    return flag.enumerated().reduce(into: [Int]()) {
        if $1.element {
            for _ in 1...arr[$1.offset]*2 {
                $0.append(arr[$1.offset])
            }
        } else {
            $0.removeLast(arr[$1.offset])
        }
    }
}