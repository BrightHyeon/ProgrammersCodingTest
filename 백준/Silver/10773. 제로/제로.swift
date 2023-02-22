var arr = [Int]()
for _ in 1...Int(readLine()!)! {
    let num = Int(readLine()!)!
    if num == 0 {
        arr.removeLast()
    } else {
        arr.append(num)
    }
}
print(arr.reduce(0, +))