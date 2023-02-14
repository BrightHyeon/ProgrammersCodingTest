import Foundation

func solution(_ myString: String) -> Int {
    var operation = "+"
    return myString.components(separatedBy: " ").reduce(0) {
        if Int($1) != Optional(nil) {
            return operation == "+" ? ($0 + Int($1)!) : ($0 - Int($1)!)
        } else {
            operation = $1
            return $0
        }
    }
}