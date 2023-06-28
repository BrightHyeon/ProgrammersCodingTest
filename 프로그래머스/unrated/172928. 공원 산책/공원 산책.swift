import Foundation

func solution(_ park: [String], _ routes: [String]) -> [Int] {
    let park = park.map { Array($0) }
    var pos = [0, 0]
    
    for r in park.indices {
        for c in park[0].indices where park[r][c] == "S" {
            pos = [r, c]
            break
        }
    }
    
    func move(r: Int, c: Int) {
        let rows = [pos[0], pos[0]+r].sorted()
        let cols = [pos[1], pos[1]+c].sorted()
        var isOk = true
        
        outerloof: for i in rows[0]...rows[1] {
            if i >= 0, i < park.count {
                for j in cols[0]...cols[1] {
                    if j >= 0 && j < park[0].count {
                        if park[i][j] == "X" {
                            isOk = false
                            break outerloof
                        }
                    } else {
                        isOk = false
                        break outerloof
                    }
                }
            } else {
                isOk = false
                break
            }
        }
        
        if isOk {
            pos = [pos[0]+r, pos[1]+c]
        }
    }
    
    for i in routes {
        let n = Int(String(i.last!))!
        switch i.first! {
        case "N": move(r: -n, c: 0)
        case "W": move(r: 0, c: -n)
        case "E": move(r: 0, c: n)
        default: move(r: n, c: 0)
        }
    }
    
    return pos
}