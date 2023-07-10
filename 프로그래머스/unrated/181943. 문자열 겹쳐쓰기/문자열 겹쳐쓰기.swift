import Foundation

func solution(_ my_string: String, _ overwrite_string: String, _ s:Int) -> String {
    let suf = my_string.count - s - overwrite_string.count
    return String(my_string.prefix(s)) + overwrite_string + String(my_string.suffix(suf < 0 ? 0 : suf))
}