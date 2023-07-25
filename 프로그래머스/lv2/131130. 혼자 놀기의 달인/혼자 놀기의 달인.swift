import Foundation

func solution(_ cards: [Int]) -> Int {
    var groups = [Int](), opened = [Int]()
    var cards = cards.map { $0-1 }
    
    for (idx, card) in cards.enumerated() where !opened.contains(card) {
        var count = 1
        var to = card
        opened.append(idx)
        
        while !opened.contains(to) {
            opened.append(to)
            count += 1
            to = cards[to]
        }
        groups.append(count)
    }
    
    groups.sort(by: >)
    
    return groups.count == 1 ? 0 : groups[0] *  groups[1]
}