func solution(_ n: Int) -> [[Int]] {
    var arr = Array(repeating: Array(repeating: 0, count: n), count: n)
    var pos = (0, 0)
    var dir = 0
    
    func next() -> (Int, Int) {
        switch dir {
        case 0: return (pos.0, pos.1+1)
        case 1: return (pos.0+1, pos.1)
        case 2: return (pos.0, pos.1-1)
        case 3: return (pos.0-1, pos.1)
        default: return pos
        }
    }
    func canMove() -> Bool {
        let new = next()
        if new.0 < 0 || new.1 < 0 || new.0 >= n || new.1 >= n {
            return false
        }
        return arr[new.0][new.1] == 0
    }
    
    for i in 1...n*n {
        arr[pos.0][pos.1] = i
        if !canMove() {
            dir = (dir + 1) % 4
        }
        pos = next()
    }
    
    return arr
}