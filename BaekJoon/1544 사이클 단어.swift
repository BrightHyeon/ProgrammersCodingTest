var words = [String]()

func isSame(_ str: String) -> Bool {
    for word in words {
        if str.count == word.count/2 && word.contains(str) {
            return true
        }
    }
    return false
}

for _ in 1...Int(readLine()!)! {
    let word = readLine()!
    if !isSame(word) {
        words.append(word + word)
    }
}

print(words.count)
