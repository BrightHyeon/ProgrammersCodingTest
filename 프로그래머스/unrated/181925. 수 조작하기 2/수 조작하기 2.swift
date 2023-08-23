import Foundation

func solution(_ numLog: [Int]) -> String {
    var res = ""
    for i in 1..<numLog.count {
        let sub = numLog[i]-numLog[i-1]
        switch sub {
        case 1: res += "w"
        case -1: res += "s"
        case 10: res += "d"
        default: res += "a"
        }
    }
    return res
}
