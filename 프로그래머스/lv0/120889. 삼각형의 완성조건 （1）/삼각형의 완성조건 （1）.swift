import Foundation

func solution(_ sides:[Int]) -> Int {
    return sides.sorted()[0] + sides.sorted()[1] > sides.sorted()[2] ? 1 : 2
}