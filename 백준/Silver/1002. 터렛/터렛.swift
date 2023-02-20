prefix operator **
prefix func **(_ num: Int) -> Int {
    return num * num
}

for _ in 1...Int(readLine()!)! {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    let (x1, y1) = (line[0], line[1])
    let (x2, y2) = (line[3], line[4])
    let (r1, r2) = (line[2], line[5])
    
    if x1 == x2, y1 == y2 {
        if r1 == 0, r2 == 0 {
            print(1)
        } else if r1 != r2 {
            print(0)
        } else {
            print(-1)
        }
    } else {
        if **(x2 - x1) + **(y2 - y1) == **(r1 + r2) || **(x2 - x1) + **(y2 - y1) == **(r1 - r2) {
            print(1)
        } else if **(x2 - x1) + **(y2 - y1) < **(r1 - r2) || **(x2 - x1) + **(y2 - y1) > **(r1 + r2) {
            print(0)
        } else {
            print(2)
        }
    }
}