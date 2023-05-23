let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], m = input[1]
var dict = [Int: Int]()
(0...n).forEach { dict[$0] = $0 }

func find2(_ n: Int) -> Int {
    var n = n
    while dict[n]! != n {
        n = dict[n]!
    }
    return n
}

func find(_ n: Int) -> Int {
    if n != dict[n]! {
        dict[n] = find(dict[n]!)
    }
    return dict[n]!
}

func union(_ a: Int, _ b: Int) {
    let ap = find(a), bp = find(b)
    if ap >= bp {
        dict[ap] = bp
    } else {
        dict[bp] = ap
    }
}

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let kind = input[0], a = input[1], b = input[2]
    if kind == 0 {
        union(a, b)
    } else {
        print(find(a) == find(b) ? "YES" : "NO")
    }
}