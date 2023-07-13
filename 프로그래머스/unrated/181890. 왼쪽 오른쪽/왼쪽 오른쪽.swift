import Foundation

func solution(_ str_list: [String]) -> [String] {
    for (idx, i) in str_list.enumerated() {
        if i == "l" {
            return Array(str_list[0..<idx])
        } else if i == "r" {
            if idx != str_list.count-1 {
                return Array(str_list[idx+1..<str_list.count])
            }
        }
    }
    return []
}