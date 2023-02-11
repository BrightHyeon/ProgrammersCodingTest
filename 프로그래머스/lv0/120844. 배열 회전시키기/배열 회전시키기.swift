import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var arr = numbers
    if direction == "left" {
        arr.append(arr.removeFirst())
    } else {
        arr.insert(arr.removeLast(), at: 0)
    }
    return arr
}