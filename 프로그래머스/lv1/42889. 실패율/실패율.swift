func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var trier = 0
    var total = 0
    
    var steps: [Int: Double] = [:]
    var sortedStages: [Int] = stages.sorted { $0 > $1 }
    
    for step in 1...N {
        while sortedStages.last ?? N+2 <= step {
            sortedStages.removeLast()
            trier += 1
            total += 1
        }
        total += sortedStages.count
        steps[step] = Double(trier) / Double(total)
        trier = 0
        total = 0
    }
    
    return steps.sorted {
        $0.key < $1.key
    }.sorted {
        $0.value > $1.value
    }.map { $0.key }
}