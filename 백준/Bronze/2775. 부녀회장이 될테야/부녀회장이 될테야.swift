func checkFloor(k: Int, n: Int) -> Int {
    var pre = Array(1...14)
    var arr = Array(repeating: 0, count: n)
    var count = 0
    
    // 0...n-1 인덱스까지만 하면 된다.
    while count != k {
        for i in 0...n-1 {
            arr[i] = pre[0...i].reduce(0, +)
        }
        pre = arr
        count += 1
    }
    
    return arr[n-1]
}

for _ in 1...Int(readLine()!)! {
    let floor = Int(readLine()!)!
    let room = Int(readLine()!)!
    
    print(checkFloor(k: floor, n: room))
}