import Foundation

func solution(_ s: String) -> [Int] {
    
    var total: [[Int]] = []
    
    var num: String = ""
    var elements: [Int] = []
    
    var set: Set<Int> = []
    var result: [Int] = []
    
    for i in s {
        if Int(String(i)) != Optional(nil) {
            num += String(i)
        } else {
            if !num.isEmpty {
                elements.append(Int(num)!)
                num = ""
            }
        }
        
        if i == "}" {
            total.append(elements)
            elements = []
        }
        
    }
    total.removeLast()
    
    for i in total.sorted(by: {$0.count < $1.count}) {
        for j in i {
            if !set.contains(j) {
                result.append(j)
                set.insert(j)
            }
        }
    }
    return result
}