while true {
    let n = Array(readLine()!)
    if n[0] == "0" { break }
    if Array(n[0..<n.count/2]) == Array(n[n.count/2+(n.count % 2 == 0 ? 0 : 1)..<n.count].reversed()) {
        print("yes")
    } else {
        print("no")
    }
}