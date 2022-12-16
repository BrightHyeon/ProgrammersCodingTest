import Foundation

func solution(_ dots:[[Int]]) -> Int {
    guard dots.count >= 3 else { return 0 }
    var arr: [Double] = []
    
    for (idx, i) in dots.enumerated() where idx != dots.count-1 {
        for j in dots[idx+1...dots.count-1] {
            print(i, j)
            arr.append(Double(i[0]-j[0]) / Double(i[1]-j[1]))
        }
    }
    
    return arr.count == Set(arr).count ? 0 : 1
}