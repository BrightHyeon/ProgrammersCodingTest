let n = Int(readLine()!)!
var ans = ""
let screen = (0..<n).map { _ in
    return Array(readLine()!).map { String($0) }
}

func check(_ s: [Int], _ l: Int) {
    let color = screen[s[0]][s[1]]
    for i in s[0]..<s[0]+l {
        for j in s[1]..<s[1]+l {
            if screen[i][j] != color {
                ans += "("
                check(s, l/2)
                check([s[0], s[1]+l/2], l/2)
                check([s[0]+l/2, s[1]], l/2)
                check([s[0]+l/2, s[1]+l/2], l/2)
                ans += ")"
                return
            }
        }
    }
    ans += color
}

check([0, 0], n)
print(ans)