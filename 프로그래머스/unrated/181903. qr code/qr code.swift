import Foundation

func solution(_ q: Int, _ r: Int, _ code: String) -> String {
    let res = code.enumerated().reduce("") {
        return $0 + ($1.offset % q == r ? String($1.element) : "")
    }
    return res
}