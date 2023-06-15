func wow(_ n: Int) -> Int {
    if n < 2 {
        return 0
    } else {
        return min(wow(n/2)+n%2, wow(n/3)+n%3)+1
    }
}

print(wow(Int(readLine()!)!))