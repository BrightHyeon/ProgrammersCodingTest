import Foundation

func solution(_ myStr: String) -> [String] {
    let res = myStr.components(separatedBy: ["a", "b", "c"]).filter { !$0.isEmpty }
    return res.isEmpty ? ["EMPTY"] : res
}