import Foundation

func solution(_ my_string: String, _ indices: [Int]) -> String {
    var arr = Array(my_string).map { String($0) }
    indices.forEach { arr[$0] = "" }
    return arr.joined()
}