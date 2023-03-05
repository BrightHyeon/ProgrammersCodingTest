while true {
    let num = Int(readLine()!)!
    guard num != -1 else { break }
    var arr = [Int]()
    for i in 1...num-1 {
        if num % i == 0 {
            arr.append(i)
        }
    }
    if arr.reduce(0, +) == num {
        print("\(num) = \(arr.map { String($0) }.joined(separator: " + "))")
    } else {
        print("\(num) is NOT perfect.")
    }
}