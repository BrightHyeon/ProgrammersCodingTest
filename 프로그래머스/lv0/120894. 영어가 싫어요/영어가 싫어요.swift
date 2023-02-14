import Foundation

func solution(_ numbers:String) -> Int {
    var numbers = numbers
    numbers = numbers.replacingOccurrences(of: "zero", with: "0")
    numbers = numbers.replacingOccurrences(of: "one", with: "1")
    numbers = numbers.replacingOccurrences(of: "two", with: "2")
    numbers = numbers.replacingOccurrences(of: "three", with: "3")
    numbers = numbers.replacingOccurrences(of: "four", with: "4")
    numbers = numbers.replacingOccurrences(of: "five", with: "5")
    numbers = numbers.replacingOccurrences(of: "six", with: "6")
    numbers = numbers.replacingOccurrences(of: "seven", with: "7")
    numbers = numbers.replacingOccurrences(of: "eight", with: "8")
    numbers = numbers.replacingOccurrences(of: "nine", with: "9")
    return Int(numbers)!
}