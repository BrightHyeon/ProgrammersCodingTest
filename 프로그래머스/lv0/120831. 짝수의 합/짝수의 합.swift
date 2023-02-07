import Foundation

func solution(_ n:Int) -> Int {
    return (1...n).reduce(0) {
        $0 + ($1 % 2 == 0 ? $1 : 0)
    }
}