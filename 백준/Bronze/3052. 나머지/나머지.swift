var arr = [Int]()

for _ in 1...10 {
    arr.append(Int(readLine()!)! % 42)
}

print(Set(arr).count)