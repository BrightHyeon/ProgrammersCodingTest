import Foundation

func solution(_ numbers:[Int]) -> Int {
    return numbers.sorted().last! * numbers.sorted()[numbers.count - 2]
}