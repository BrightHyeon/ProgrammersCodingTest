var arr = (1...Int(readLine()!)!).map{ _ in readLine()! }
var k = 0
var nums = Array(repeating: "", count: arr.count)
while true {
    k += 1
    for idx in arr.indices {
        nums[idx] += String(arr[idx].removeLast())
    }
    if nums.count == Set(nums).count {
        print(k)
        break
    }
}

