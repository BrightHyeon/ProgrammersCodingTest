import Foundation

func solution(_ arr: [Int]) -> [Int] {
    var res = [Int]()
    
    for i in arr {
        if res.isEmpty || res.last! < i {
            res.append(i)
        } else {
            while !(res.isEmpty || res.last! < i) {
                res.removeLast()
            }
            res.append(i)
        }
    }
    
    return res
}