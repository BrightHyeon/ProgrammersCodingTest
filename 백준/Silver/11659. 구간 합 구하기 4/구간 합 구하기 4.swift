let m = Int(readLine()!.split(separator: " ")[1])!
func mapping() -> [Int] { return readLine()!.split(separator: " ").map { Int($0)! } }
let arr = mapping()
var sum = 0
var sumArr = [Int]()
for i in arr {
    sum += i
    sumArr.append(sum)
}
for _ in 1...m {
    let range = mapping().map { $0 - 1 }
    print(sumArr[range[1]] - (range[0] != 0 ? sumArr[range[0]-1] : 0))
}