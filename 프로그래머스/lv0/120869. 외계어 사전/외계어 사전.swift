import Foundation

func solution(_ spell: [String], _ dic: [String]) -> Int {
    for word in dic {
        var boolean = true
        for i in spell {
            if !word.contains(i) {
                boolean = false
            }
        }
        if boolean {
            return 1
        }
    }
    return 2
}