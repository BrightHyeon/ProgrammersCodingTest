import Foundation

func solution(_ s: String) -> Int {
    var str = ""
    for i in s {
        if !str.isEmpty {
            if str.last == i {
                str.removeLast()
            } else {
                str.append(i)
            }
        } else {
            str.append(i)
        }
    }
    return str.isEmpty ? 1 : 0
}