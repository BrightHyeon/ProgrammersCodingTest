import Foundation

func solution(_ array:[Int]) -> Int {
    let dict = array.reduce(into: Dictionary<Int, Int>()) { dict, key in
        dict[key, default: 0] += 1
    }
    let keys = dict.sorted { $0.value > $1.value }.map { $0.key }
    
    if keys.count == 1 {
        return keys[0]
    } else if dict[keys[0]] == dict[keys[1]] {
        return -1
    } else {
        return keys[0]
    }
}