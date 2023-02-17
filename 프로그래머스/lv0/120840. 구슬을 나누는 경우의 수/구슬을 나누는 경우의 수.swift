func solution(_ balls: Int, _ share: Int) -> Int {
    return (balls-share+1...balls).enumerated().reduce(1) { $0 * $1.element / ($1.offset + 1) }
}