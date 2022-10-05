import Foundation

let count = Int(readLine()!)!
var stack: [Int] = []

for _ in 1...count {
    let command = readLine()!
    switch command {
    case "pop":
        if stack.isEmpty {
            print(-1)
        } else {
            let last = stack.removeLast()
            print(last)
        }
    case "size":
        print(stack.count)
    case "empty":
        print(stack.isEmpty ? 1 : 0)
    case "top":
        print(stack.last ?? -1)
    default:
        stack.append(Int(command.components(separatedBy: " ")[1])!)
    }
}