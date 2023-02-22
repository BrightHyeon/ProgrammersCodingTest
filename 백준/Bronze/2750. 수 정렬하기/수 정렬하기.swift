var arr = [Int]()
for _ in 1...Int(readLine()!)! {
    arr.append(Int(readLine()!)!)
}
for i in arr.sorted() {
    print(i)
}