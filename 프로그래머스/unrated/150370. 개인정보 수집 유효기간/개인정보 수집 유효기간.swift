import Foundation

func solution(_ today: String, _ terms: [String], _ privacies: [String]) -> [Int] {
    var dict: [String: Int] = [:]
    let today = today.components(separatedBy: " ")[0].components(separatedBy: ".").map { Int($0)! }
    
    terms.forEach {
        dict[$0.components(separatedBy: " ")[0]] = Int($0.components(separatedBy: " ")[1])!
    }
    
    return privacies.enumerated().compactMap {
        let div = $0.element.components(separatedBy: " ")
        var ymd = div[0].components(separatedBy: ".").map { Int($0)! }
        let months = ymd[1] + dict[div[1]]!
        if months > 12 {
            ymd[1] = months % 12
            ymd[0] += months / 12
        } else {
            ymd[1] += dict[div[1]]!
        }
        ymd[2] -= 1
        
        if ymd[1] == 0 {
            ymd[1] = 12
            ymd[0] -= 1
        }
        
        return (ymd[0], ymd[1], ymd[2]) < (today[0], today[1], today[2]) ? $0.offset + 1 : nil
    }
}