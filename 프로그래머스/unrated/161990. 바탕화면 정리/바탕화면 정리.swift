import Foundation

func solution(_ wallpaper: [String]) -> [Int] {
    let paper = wallpaper.map { Array($0) }
    var (l, r, t, b) = (50, 0, 50, 0)
    
    for i in paper.indices {
        for j in paper[0].indices where paper[i][j] == "#" {
            l = min(l, j)
            r = max(r, j+1)
            t = min(t, i)
            b = max(b, i+1)
        }
    }
    
    return [t, l, b, r]
}