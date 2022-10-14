import Foundation

func solution(_ babbling:[String]) -> Int {
    let words = ["aya","ye","woo","ma"]
    var count = 0
    
    for i in babbling {
        var word = i
        for (idx, j) in words.enumerated() {
            word = word.replacingOccurrences(of: j, with: "\(idx)")
        }
        if Int(word) != nil {
            var pre = ""
            for (idx, chr) in word.enumerated() {
                if pre == String(chr) {
                    break
                } else {
                    if idx == word.count - 1 {
                        count += 1
                    }
                    pre = String(chr)
                }
            }
            
        }
    }
    return count
}