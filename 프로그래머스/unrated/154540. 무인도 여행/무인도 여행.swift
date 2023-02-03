import Foundation

func solution(_ maps:[String]) -> [Int] {
    let maps = maps.map { Array($0) }
    var visited: Set<[Int]> = []
    var currentSearchScore: Int = 0
    var islands = [Int]()
    
    func search(_ position: [Int]) {
        guard position[0] >= 0, position[0] < maps.count,
              position[1] >= 0, position[1] < maps[0].count else { return }
        
        let score = maps[position[0]][position[1]]
        guard score != "X", !visited.contains(position)else { return }
        
        currentSearchScore += Int(String(score))!
        visited.insert(position)
        
        search([position[0]-1, position[1]])
        search([position[0], position[1]-1])
        search([position[0], position[1]+1])
        search([position[0]+1, position[1]])
    }
    
    for (row, i) in maps.enumerated() {
        for col in i.indices {
            search([row, col])
            islands.append(currentSearchScore)
            currentSearchScore = 0
        }
    }
    
    let filtered = islands.filter { $0 != 0 }
    return filtered.count == 0 ? [-1] : filtered.sorted()
}