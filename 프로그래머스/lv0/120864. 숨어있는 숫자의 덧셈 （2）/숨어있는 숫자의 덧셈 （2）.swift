import Foundation

func solution(_ my_string: String) -> Int {
    return my_string.components(separatedBy: .letters).compactMap { Int($0) }.reduce(0, +)
}