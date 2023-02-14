func solution(_ emergency:[Int]) -> [Int] {
    let sorted = emergency.sorted()
    return emergency.map {
        emergency.count - sorted.firstIndex(of: $0)!
    }
}