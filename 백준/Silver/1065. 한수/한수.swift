let N = Int(readLine()!)!
var result = 0

for num in 1...N {
    if num <= 99 {
        result += 1
    } else {
        let arr = Array(String(num)).map { Int(String($0))! }
        if arr[0] - arr[1] == arr[1] - arr[2] {
            result += 1
        }
    }
}

print(result)