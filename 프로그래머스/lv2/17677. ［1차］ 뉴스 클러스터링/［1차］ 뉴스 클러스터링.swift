import Foundation

func solution(_ str1: String, _ str2: String) -> Int {
    let arr = Array(str1.lowercased())
    let arr2 = Array(str2.lowercased())
    
    var aCnt = 0, bCnt = 0
    
    var dict: [String: Int] = [:]
    var interCnt = 0
    
    // str1에서 나오는 원소들을 dict에 저장.
    for i in 1..<str1.count {
        if arr[i-1].isLetter && arr[i].isLetter {
            let str = String(arr[i-1]) + String(arr[i])
            dict[str, default: 0] += 1
            aCnt += 1
        }
    }
    
    // str2를 돌면서 교집합 확인.
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
    
    let union = aCnt + bCnt - interCnt
    
    if str1.lowercased() == str2.lowercased() {
        return 65536
    } else {
        return Int(Double(interCnt) / Double(union) * 65536.0)
    }
}