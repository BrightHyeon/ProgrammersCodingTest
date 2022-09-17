import Foundation

func solution(_ name: String) -> Int {
    var result = 0
    var word = Array(name)
    word.removeFirst()
    
    for i in name {
        result += getD(b: convert(String(i)))
    }
    
    return result+minWay(word: word)
}

func convert(_ chr: String) -> Int {
    return Int(UnicodeScalar(chr)!.value)
}

func getD(b: Int) -> Int {
    let minus = abs(b-65-26)
    let plus = abs(b-65)
    return min(minus, plus)
}

func minWay(word: [Character]) -> Int {
    var mini = word.count*2
    
    guard word.count != 0 else { return 0}
    
    for i in 0...word.count-1 {
        if i != 0 {
            let l = Array(word[0..<i])
            let r = Array(word[i...word.count-1])
            
            let ld = removeA(side: l)
            let rd = removeA(side: r.reversed())
            
            if ld + rd + min(ld, rd) < mini {
                mini = ld + rd + min(ld, rd)
            }
        } else {
            if min(removeA(side: word), removeA(side: word.reversed())) < mini {
                mini = min(removeA(side: word), removeA(side: word.reversed()))
            }
        }
    }
    return mini
}

func removeA(side: [Character]) -> Int {
    var arr = side
    while arr.last == "A" {
        arr.removeLast()
    }
    return arr.count
}