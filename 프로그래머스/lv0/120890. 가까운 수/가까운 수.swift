import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    var minimum = 100
    array.forEach {
        if abs(n - $0) < abs(n - minimum) {
            minimum = $0
        } else if abs(n - $0) == abs(n - minimum) {
            minimum = min($0, minimum)
        }
    }
    return minimum
}