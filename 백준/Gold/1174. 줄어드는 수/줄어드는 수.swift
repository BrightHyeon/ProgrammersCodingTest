let n = Int(readLine()!)!
var num = 0, res = 0
var isOver = false

func isRight(_ n: Int) -> (Bool, Int) {
    var pre = 10
    for (idx, i) in String(n).enumerated() {
        if pre <= Int(String(i))! {
            return (false, String(n).count-idx)
        }
        pre = Int(String(i))!
    }
    return (true, 0)
}

func next(_ now: Int, _ digit: Int) -> Int {
    var ten = 1
    for _ in 0..<digit {
        ten *= 10
    }
    return (now / ten + 1) * ten
}

while num != n {
    let result = isRight(res)
    if result.0 { num += 1 }
    res = next(res, result.1)
    if res > 9876543211 {
        print(-1)
        isOver = true
        break
    }
}

if !isOver { print(res-1) }