func solution(_ emergency:[Int]) -> [Int] {
    let sorted = emergency.sorted(by: >)
    return emergency.map { sorted.firstIndex(of: $0)! + 1 }
}