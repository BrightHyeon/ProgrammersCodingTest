// tuple의 특성을 활용한 sorting (숏코드).
// mapping으로 바로 readLine한 것을 배열로 초기화.

var arr: [(Int, Int, String)] = (1...Int(readLine()!)!).map { _ in
    let input = readLine()!
    return (input.count, input.reduce(0, { $0 + ($1.isNumber ? Int(String($1))! : 0) }), input)
}
arr.sort { $0 < $1 }
arr.forEach { print($0.2) }
