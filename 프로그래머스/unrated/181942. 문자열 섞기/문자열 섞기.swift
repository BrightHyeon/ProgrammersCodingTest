import Foundation

func solution(_ str1: String, _ str2: String) -> String {
    let arr = Array(str2)
    return Array(str1).enumerated().reduce("") {
        return $0 + String($1.element) + String(arr[$1.offset])
    }
}