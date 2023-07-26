var n = Int(readLine()!)!
var i = 2

while n >= i * i {
    if n % i == 0 {
        print(i)
        n /= i
    } else {
        i += 1
    }
}

if n > 1 {
    print(n)
}
