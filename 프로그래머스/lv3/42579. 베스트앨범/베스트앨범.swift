func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    let dict = genres.enumerated().reduce(into: [String: [(Int, idx: Int)]]()) {
        $0[$1.element, default: []] += [(plays[$1.offset], $1.offset)]
    }
    return dict
        .sorted { $0.value.reduce(0) { $0 + $1.0 } > $1.value.reduce(0) { $0 + $1.0 } }
        .reduce([Int]()) { $0 + $1.value.sorted { $0.0 > $1.0 }.prefix(2).map { $0.idx }}
}