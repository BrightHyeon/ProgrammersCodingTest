import Foundation

func solution(_ my_string: String, _ s: Int, _ e: Int) -> String {
    let arr = Array(my_string)
    return String(arr[0..<s]) + String(arr[s...e].reversed()) + (e != my_string.count-1 ? String(arr[e+1..<my_string.count]) : "")
}