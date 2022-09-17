import Foundation

func solution(_ word:String) -> Int {
    
    let alphabets = ["A", "E", "I", "O", "U"]
    
    var allWords: [String] = []
    var standardWords: [String] = ["A", "E", "I", "O", "U"]
    var newWords: [String] = []
    
    for _ in 0...3 {
        allWords.append(contentsOf: standardWords)
        for word in standardWords {
            for alphabet in alphabets {
                newWords.append(word + alphabet)
            }
        }
        standardWords = newWords
        newWords = []
    }
    
    allWords.append(contentsOf: standardWords)
    
    return allWords.sorted {
        $0 < $1
    }.firstIndex(of: word)! + 1
}