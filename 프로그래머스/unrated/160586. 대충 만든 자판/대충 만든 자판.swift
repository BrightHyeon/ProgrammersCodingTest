import Foundation

func solution(_ keymap: [String], _ targets: [String]) -> [Int] {
    var dict: [Character: Int] = [:]
    
    for key in keymap {
        for (idx, chr) in key.enumerated() {
            dict[chr] = min(idx+1, dict[chr, default: 100])
        }
    }
    
    return targets.map {
        $0.reduce(0) {
            $0 + (dict.keys.contains($1) ? dict[$1]! : 10001)
        }
    }.map { $0 > 10000 ? -1 : $0 }
}