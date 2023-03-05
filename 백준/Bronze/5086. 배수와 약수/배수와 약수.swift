while true {
    let nums = readLine()!.split(separator: " ").map { Int($0)! }
    if nums[0] == 0, nums[1] == 0 {
        break
    }
    if nums[0] / nums[1] > 0 && nums[0] % nums[1] == 0 {
        print("multiple")
    } else if nums[1] / nums[0] > 0 && nums[1] % nums[0] == 0 {
        print("factor")
    } else {
        print("neither")
    }
}