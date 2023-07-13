func solution(_ ineq: String, _ eq: String, _ n: Int, _ m: Int) -> Int {
    var isBool = false
    switch (ineq, eq) {
    case (">", "="):
        isBool = n >= m
    case ("<", "="):
        isBool = n <= m
    case (">", "!"):
        isBool = n > m
    default:
        isBool = n < m
    }
    return isBool ? 1 : 0
}