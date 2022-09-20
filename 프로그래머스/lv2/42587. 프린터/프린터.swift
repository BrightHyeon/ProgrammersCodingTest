import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var mine = location
    var documents = priorities
    var count = 0
    
    while mine != -1 {
        if documents[0] == documents.max() {
            documents.removeFirst()
            count += 1
            mine -= 1
        } else {
            let document = documents.removeFirst()
            documents.append(document)
            if mine == 0 {
                mine = documents.count - 1
            } else {
                mine -= 1
            }
        }
    }
    return count
}