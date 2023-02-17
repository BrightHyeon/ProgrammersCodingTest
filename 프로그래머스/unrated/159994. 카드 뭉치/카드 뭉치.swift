import Foundation

func solution(_ cards1: [String], _ cards2: [String], _ goal: [String]) -> String {
    var idx1 = 0
    var idx2 = 0
    
    for i in goal {
        if idx1 <= cards1.count-1 && cards1[idx1] == i {
            idx1 += 1
        } else if idx2 <= cards2.count-1 && cards2[idx2] == i {
            idx2 += 1
        } else {
            return "No"
        }
    }
    
    return "Yes"
}