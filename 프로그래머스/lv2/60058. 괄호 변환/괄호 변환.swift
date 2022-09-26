import Foundation

func solution(_ p:String) -> String {
    
    var result: [Character] = []
    
    func convert(str: [Character]) {
        
        guard !str.isEmpty else { return }
        
        var lCnt = 0
        var rCnt = 0
        var isRight = true
        
        var u: [Character] = []
        var v: [Character] = []
        
        for (idx, i) in str.enumerated() {
            if i == "(" {
                lCnt += 1
            } else if i == ")" {
                rCnt += 1
            }
            if lCnt < rCnt {
                isRight = false
            }
            if lCnt == rCnt {
                u.append(contentsOf: str[0...idx])
                if idx != str.count-1 {
                    v.append(contentsOf: str[idx+1...str.count-1])
                }
                break
            }
        }
        
        if isRight {
            result += u
            convert(str: v)
        } else {
            result.append("(")
            convert(str: v)
            result.append(")")
            u.removeFirst()
            u.removeLast()
            for i in u {
                if i == "(" {
                    result += ")"
                } else {
                    result += "("
                }
            }
        }
    }
    
    convert(str: Array(p))
    
    return result.map { String($0) }.joined(separator: "")
}