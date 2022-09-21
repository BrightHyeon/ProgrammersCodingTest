import Foundation

func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var number = 0
    var array: [String] = []
    var result = ""
    
    
outerLoof: while true {
    let binary = String(number, radix: n)
    for i in binary {
        if array.count < t*m {
            array.append(String(i))
        } else {
            break outerLoof
        }
    }
    number += 1
}
    
    for (idx, i) in array.enumerated() {
        if (idx % m - (p - 1)) == 0 {
            result += String(i)
        }
    }
    
    return result.uppercased()
}