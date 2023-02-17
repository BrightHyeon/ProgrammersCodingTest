import Foundation

func solution(_ myString:String) -> Int {
    return myString.compactMap { Int(String($0)) }.reduce(0, +)
}