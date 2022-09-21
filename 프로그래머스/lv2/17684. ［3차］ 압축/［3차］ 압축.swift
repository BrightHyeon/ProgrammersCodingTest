func solution(_ msg: String) -> [Int] {
    var dict: [String: Int] = [:]
    var lastNum = 26
    var nowWord = ""
    var result: [Int] = []
    
    func isExist(_ word: String) -> Bool {
        return dict.keys.contains(word)
    }
    
    for i in 65...90 {
        let unicode = UnicodeScalar(i)!
        dict[String(unicode)] = i - 64
    }
    
    for (idx, i) in msg.enumerated() {
        if isExist(nowWord+String(i)) {
            nowWord += String(i)
        } else {
            result.append(dict[nowWord]!)
            lastNum += 1
            dict[nowWord+String(i)] = lastNum
            nowWord = String(i)
        }
        
        if idx == msg.count - 1 {
            if let word = dict[nowWord] {
                result.append(word)
            }
        }
    }
    return result
}