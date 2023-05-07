var input = Int(readLine()!)!
var n = 1
var ans = 0

while n <= input {
    ans += input - n + 1
    n *= 10
}

print(ans)