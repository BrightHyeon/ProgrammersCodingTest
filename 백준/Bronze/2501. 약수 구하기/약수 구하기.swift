let nums = readLine()!.split(separator: " ").map { Int($0)! }
var count = 0
for i in 1...nums[0] {
    if nums[0] % i == 0 {
        count += 1
    }
    if count == nums[1] {
        print(i)
        break
    }
}
if count < nums[1] {
    print(0)
}