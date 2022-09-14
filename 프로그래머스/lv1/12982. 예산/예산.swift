func solution(_ d:[Int], _ budget:Int) -> Int {    
    let sort = d.sorted { $0 < $1 }
    var bud = budget
    var count = 0
    
    for i in sort {
        if bud - i >= 0 {
            bud -= i
            count += 1
        } else {
            return count
        }
    }
    return count
}