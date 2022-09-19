func solution(_ s: String) -> Bool {
    var lCount = 0
    var rCount = 0
    
    for i in s {
        if rCount > lCount {
            return false
        } else {
            if i == "(" {
                lCount += 1
            } else if i == ")" {
                rCount += 1
            }
        }
    }
    return lCount == rCount
}