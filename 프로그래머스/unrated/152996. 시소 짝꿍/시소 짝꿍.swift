import Foundation

func solution(_ weights: [Int]) -> Int {
    var dict: [Int: Int] = [:]
    var visited: Set<Int> = []
    var res = 0
    
    func isRight(_ a: Int, _ b: Int) -> Bool {
        let x: Set<Int> = [a*2, a*3, a*4]
        let y: Set<Int> = [b*2, b*3, b*4]
        return x.intersection(y).count != 0
    }
    
    for i in weights {
        dict[i, default: 0] += 1
    }
    
    let keys = dict.keys.sorted()
    
    func factorial(_ n: Int) -> Int {
        if n <= 1 {
            return 1
        } else {
            return n * factorial(n - 1)
        }
    }

    func combination(_ n: Int, _ r: Int) -> Int {
        if r > n {
            return 0
        } else {
            return factorial(n) / (factorial(r) * factorial(n - r))
        }
    }
    
    for i in 0..<keys.count-1 {
        for j in i+1..<keys.count {
            let x = keys[i], y = keys[j]
            if isRight(x, y) {
                res += dict[x]! * dict[y]!
            }
            
            if dict[x]! >= 2, !visited.contains(x) {
                res += combination(dict[x]!, 2)
                visited.insert(x)
            }
        }
    }
    
    let x = keys.last!
    
    if dict[x]! >= 2, !visited.contains(x) {
        res += combination(dict[x]!, 2)
        visited.insert(x)
    }
    
    return res
}