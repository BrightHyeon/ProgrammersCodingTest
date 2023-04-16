let S = Array(readLine()!)
var ans = S.count, temp = 0
var ldx = 0, rdx = S.count-1
while ldx < rdx {
    if S[ldx] == S[rdx] {
        temp += 1
        ldx += 1
        rdx -= 1
    } else {
        if temp != 0 {
            ans += 1
            ldx -= temp - 1
            rdx += temp
            temp = 0
        } else {
            ans += 1
            ldx += 1
        }
    }
}
print(ans)
