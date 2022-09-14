import Foundation

func solution(_ s:String) -> String {
    var arr: [String] = []
    
    for (idx, i) in s.components(separatedBy: " ").enumerated() {
        arr.append("")
        for (jdx, j) in i.enumerated() {
            if jdx == 0 {
                arr[idx].append(j.uppercased())
            } else {
                arr[idx].append(j.lowercased())
            }
        }
    }
    return arr.joined(separator: " ")
}