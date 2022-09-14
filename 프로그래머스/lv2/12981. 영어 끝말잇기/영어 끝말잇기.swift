func solution(_ n:Int, _ words:[String]) -> [Int] {
    
    var wordSet: Set<String> = []
    
    for (idx, i) in words.enumerated() {
        let preCount = wordSet.count
        wordSet.insert(i)
        if preCount == wordSet.count {
            return [idx%n+1, idx/n+1]
        } else {
            if idx != 0 {
                if words[idx-1].last! != i.first! {
                    return [idx%n+1, idx/n+1]
                }
            }
        }
    }
    return [0, 0]
}