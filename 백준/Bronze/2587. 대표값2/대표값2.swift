var arr = [Int]()
for _ in 1...5 {
    arr.append(Int(readLine()!)!)
}
print(arr.reduce(0, +)/5)
print(arr.sorted()[2])
