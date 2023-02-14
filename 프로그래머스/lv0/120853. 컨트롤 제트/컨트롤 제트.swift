import Foundation

func solution(_ s: String) -> Int {
    var pre = 0
    return s.split(separator: " ").reduce(0) {
        if $1 != "Z" {
            pre = Int($1)!
            return $0 + Int($1)!
        } else {
            return $0 - pre
        }
    }
}