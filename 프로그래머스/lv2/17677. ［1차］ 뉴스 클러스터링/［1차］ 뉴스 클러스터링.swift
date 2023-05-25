func solution(_ str1: String, _ str2: String) -> Int {
    guard str1.lowercased() != str2.lowercased() else { return 65536 }
    let arr = Array(str1.lowercased()), arr2 = Array(str2.lowercased())
    var aCnt = 0, bCnt = 0
    
    var dict: [String: Int] = [:]
    var interCnt = 0
    
    for i in 1..<str1.count {
        if arr[i-1].isLetter && arr[i].isLetter {
            let str = String(arr[i-1]) + String(arr[i])
            dict[str, default: 0] += 1
            aCnt += 1
        }
    }
    
    for i in 1..<str2.count {
        if arr2[i-1].isLetter && arr2[i].isLetter {
            let str = String(arr2[i-1]) + String(arr2[i])
            bCnt += 1
            if dict[str] != nil, dict[str]! != 0 {
                interCnt += 1
                dict[str]! -= 1
            }
        }
    }
    
    return Int(Double(interCnt) / Double(aCnt+bCnt-interCnt) * 65536.0)
}