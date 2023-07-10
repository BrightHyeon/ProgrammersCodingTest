import Foundation

func solution(_ n: Int) -> [[Int]] {
    var res = [[Int]]()
    
    func move(from: Int, to: Int) {
        res.append([from, to])
    }
    
    /// - n: n개의 원판
    /// - f: first. 첫 발판.
    /// - s: second. 두번째 발판.
    /// - t: third. 세번째 발판.
    func hanoi(n: Int, f: Int, s: Int, t: Int) {
        if n == 1 {
            move(from: f, to: t)
        } else {
            hanoi(n: n-1, f: f, s: t, t: s)
            move(from: f, to: t)
            hanoi(n: n-1, f: s, s: f, t: t)
        }
    }
    
    hanoi(n: n, f: 1, s: 2, t: 3)
    
    return res
}