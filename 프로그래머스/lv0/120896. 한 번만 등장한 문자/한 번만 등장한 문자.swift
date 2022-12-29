import Foundation

func solution(_ s:String) -> String {
    return s.reduce(into: Dictionary<String, Int>()) { dict, value in
        dict[String(value), default: 0] += 1
    }.filter { $0.value == 1 }.keys.sorted { $0 < $1 }.joined()
}