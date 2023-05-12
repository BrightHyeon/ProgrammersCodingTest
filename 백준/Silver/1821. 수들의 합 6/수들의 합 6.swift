let input = readLine()!.split(separator: " ").map { Int($0)! }
var arr = Array(1...input[0])

func next() {
    for i in stride(from: input[0]-1, through: 1, by: -1) {
        if arr[i-1] < arr[i] {
            for j in (i..<input[0]).reversed() {
                if arr[j] > arr[i-1] {
                    arr.swapAt(i-1, j)
                    arr = Array(arr[0...i-1] + arr[i..<input[0]].sorted())
                    return
                }
            }
        }
    }
}

func add() -> Int {
    var arr = arr
    while arr.count != 1 {
        for i in 0..<arr.count-1 {
            arr[i] = arr[i] + arr[i+1]
        }
        arr.removeLast()
    }
    return arr[0]
}

while true {
    let res = add()
    if res == input[1] {
        print(arr.map { String($0) }.joined(separator: " "))
        break
    } else {
        next()
    }
}