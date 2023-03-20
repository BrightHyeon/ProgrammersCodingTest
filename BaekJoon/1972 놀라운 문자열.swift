while true {
    let word = Array(readLine()!)
    if word == ["*"] { break }
    var arr = Array(repeating: Set<String>(minimumCapacity: 79), count: word.count - 1)
    for idx in word.indices where idx != word.count-1 {
        for jdx in idx+1...word.count-1 {
            arr[jdx-1-idx].insert("\(word[idx])\(word[jdx])")
        }
    }
    var isSurprise: Bool = true
    for (idx, i) in arr.enumerated() {
        if i.count != word.count-1-idx {
            isSurprise = false
            break
        }
    }
    print("\(String(word)) is \(isSurprise ? "" : "NOT ")surprising.")
}
