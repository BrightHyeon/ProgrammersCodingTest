func solution(_ array:[Int]) -> Int {
    let dict = Dictionary(grouping: array) { $0 }
        .sorted(by: { $0.value.count > $1.value.count })
    return dict.count == 1 ? dict.first!.key : (dict[0].value.count == dict[1].value.count ? -1 : dict[0].key)
}