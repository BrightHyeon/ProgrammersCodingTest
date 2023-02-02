import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    let alphabets: [Character] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    
    func move(_ alphabet: Character) -> Character {
        var idx = alphabets.firstIndex(of: alphabet)!
        var count = 0
        while count != index {
            let newIdx = (idx + 1) % 26
            if !skip.contains(alphabets[newIdx]) {
                count += 1
            }
            idx += 1
        }
        return alphabets[idx % 26]
    }
    
    return s.map { String(move($0)) }.joined()
}