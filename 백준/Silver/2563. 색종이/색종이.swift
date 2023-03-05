var arr = [[Int]]()
for _ in 1...Int(readLine()!)! {
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    let (x, y) = (nums[0], nums[1])
    for i in x...x+9 {
        for j in y...y+9 {
            arr.append([i,j])
        }
    }
}
print(Set(arr).count)