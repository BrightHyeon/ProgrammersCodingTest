import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var numbers = numbers
    var stack = [Int]()
    
    for (idx, i) in numbers.enumerated() {
        while !stack.isEmpty {
            if numbers[stack.last!] < i {
                numbers[stack.last!] = i
                let _ = stack.popLast()
            } else {
                break
            }
        }
        stack.append(idx)
    }
    
    for i in stack {
        numbers[i] = -1
    }
    
    return numbers
}