import Foundation

func solution(_ clothes: [[String]]) -> Int {
    var dict: [String: Int] = [:]
    
    for i in clothes {
        if dict.keys.contains(i.last!) {
            dict[i.last!]! += 1
        } else {
            dict[i.last!] = 2
        }
    }
    
    return dict.reduce(1) { partialResult, element in
        return partialResult * element.value
    } - 1
}