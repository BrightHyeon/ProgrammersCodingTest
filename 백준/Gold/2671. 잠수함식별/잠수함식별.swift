import Foundation
let pattern = "^(100+1+|01)+$"
print(readLine()!.range(of: pattern, options: .regularExpression) != nil ? "SUBMARINE" : "NOISE")