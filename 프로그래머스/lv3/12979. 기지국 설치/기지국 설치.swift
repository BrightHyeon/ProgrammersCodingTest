import Foundation

func solution(_ n:Int, _ stations:[Int], _ w:Int) -> Int{
    var ans = 0
    var point = 1
    
    func add5G(toFill: Int, range: Int) {
        ans += toFill / range + (toFill % range == 0 ? 0 : 1)
    }
    
    for i in stations {
        if point < i - w {
            add5G(toFill: i - w - point, range: 2 * w + 1)
        }
        point = i + w + 1
    }
    
    if stations.last! + w < n {
        add5G(toFill: n - (stations.last! + w), range: 2 * w + 1)
    }

    return ans
}