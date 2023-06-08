let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], a = input[1], b = input[2]

var arr = Array(repeating: 0, count: n)
arr[a-1] = 1; arr[b-1] = 1

var round = 0

while true {
    round += 1
    
    var newArr = [Int]()
    
    for i in 0..<arr.count/2 {
        let idx = i * 2
        newArr.append(arr[idx] + arr[idx+1])
    }
    
    if arr.count % 2 != 0 {
        newArr.append(arr.last!)
    }
    
    if newArr.contains(2) {
        print(round)
        break
    }
    
    arr = newArr
}