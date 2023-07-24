import Foundation

func solution(_ picks: [Int], _ minerals: [String]) -> Int {
    var arr = [(Int, Int, Int)]()
    var temp = [String]()
    var picks = picks
    var res = 0
    
    for (idx, i) in minerals.enumerated() {
        temp.append(i)
        
        if temp.count == 5 || idx == minerals.count-1 {
            var dis = (0, 0, 0)
            for i in temp {
                switch i {
                case "diamond": dis.0 += 1
                case "iron": dis.1 += 1
                default: dis.2 += 1
                }
            }
            arr.append(dis)
            temp = []
        }
    }
    
    let cnt = arr.count - picks.reduce(0, +)
    if cnt > 0 { arr.removeLast(cnt) }
    arr.sort { $0 < $1 }
    
    for (idx, i) in picks.enumerated() where i > 0 {
        var s = (0, 0, 0)
        if idx == 0 {
            s = (1, 1, 1)
        } else if idx == 1 {
            s = (5, 1, 1)
        } else {
            s = (25, 5, 1)
        }
        
        while !arr.isEmpty && picks[idx] > 0 {
            let m = arr.removeLast()
            res += s.0*m.0 + s.1*m.1 + s.2*m.2
            picks[idx] -= 1
        }
    }
    
    return res
}