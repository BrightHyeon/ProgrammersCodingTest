import Foundation

func solution(_ myString: String, _ pat: String) -> String {
    var str = myString
    while str.suffix(pat.count) != pat {
        str.removeLast()
    }
    return str
}