import Foundation

func solution(_ X:String, _ Y:String) -> String {
    var dictX = Dictionary<String, Int>()
    var dictY = Dictionary<String, Int>()
    (0...9).forEach {
        dictX[String($0)] = 0
        dictY[String($0)] = 0
    }
    for i in X {
        dictX[String(i)]! += 1
    }

    for i in Y {
        dictY[String(i)]! += 1
    }
    
    var result = ""
    
    for i in "0123456789" {
        let count = min(dictX[String(i)]!, dictY[String(i)]!)
        result += String(repeating: i, count: count)
    }
    
    let sorted = Array(result).map{ String($0) }.sorted(by: { $0 > $1 }).joined()

    return sorted.isEmpty ? "-1" : (sorted.first! == "0" ? "0" : sorted)
}