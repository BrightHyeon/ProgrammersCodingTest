import Foundation

func solution(_ picture: [String], _ k: Int) -> [String] {
    let picture = picture.map { Array($0) }
    var arr = Array(repeating: Array(repeating: Character("."), count: picture[0].count * k), count: picture.count * k)
    
    for r in 0..<picture.count {
        for c in 0..<picture[0].count {
            for i in 0..<k {
                for j in 0..<k {
                    arr[r*k+i][c*k+j] = picture[r][c]
                }
            }
        }
    }
    return arr.map { String($0) }
}