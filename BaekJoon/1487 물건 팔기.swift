let N = Int(readLine()!)!
var max = 0, ans = 0
var keys = Set<Int>()

var arr: [(Int, Int)] = (1...N).map { _ in
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    keys.insert(input[0])
    return (input[0], input[1])
}

arr.sort { $0.0 < $1.0 }

for i in keys.sorted() {
    var sum = 0
    for j in arr where j.0 >= i && j.1 < i {
        sum += i
        sum -= j.1
    }
    if sum > max {
        max = sum
        ans = i
    }
}
print(ans)
