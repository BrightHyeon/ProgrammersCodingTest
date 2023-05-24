func solution(_ cacheSize: Int, _ cities: [String]) -> Int {
    var res = 0
    var cache = Array(repeating: "", count: cacheSize)
    
    for i in cities {
        var needRemove = -1
        for idx in cache.count-cacheSize..<cache.count {
            if cache[idx] == i.lowercased() {
                needRemove = idx
                break
            }
        }
        
        if needRemove == -1 {
            res += 5
        } else {
            res += 1
            cache.remove(at: needRemove)
            needRemove = -1
        }
        
        cache.append(i.lowercased())
    }
    
    return res
}