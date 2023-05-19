import Foundation

let pattern = "^[A-F]{0,1}A+F+C+[A-F]{0,1}$"

for _ in 1...Int(readLine()!)! {
    print(readLine()!.range(of: pattern, options: .regularExpression) != nil ? "Infected!" : "Good")
}