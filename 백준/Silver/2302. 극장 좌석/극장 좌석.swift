let n = Int(readLine()!)!, m = Int(readLine()!)!
var distances = [Int]()
var vip = 0

func getCount(_ distance: Int) -> Int {
    if distance == 0 { return 1 }
    if distance < 4 { return distance }
    return getCount(distance-1) + getCount(distance-2)
}


for _ in 0..<m {
    let num = Int(readLine()!)!
    distances.append(num - vip - 1)
    vip = num
}

distances.append(n - vip)
print(distances.reduce(1) { $0 * getCount($1) })