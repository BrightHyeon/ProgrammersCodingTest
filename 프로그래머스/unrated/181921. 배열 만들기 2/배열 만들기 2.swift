import Foundation

func solution(_ l: Int, _ r: Int) -> [Int] {
    var res = [Int]()
    var num = 5
    
    func next(_ n: String) -> Int {
        var arr = Array(n)
        if let idx = arr.lastIndex(of: "0") {
            for i in idx..<arr.count {
                arr[i] = "0"
            }
            arr[idx] = "5"
        } else {
            arr = arr.map { _ in "0" }
            arr.insert("5", at: 0)
        }
        
        return Int(String(arr))!
    }
    
    while num <= r {
        if num >= l {
            res.append(num)
        }
        num = next(String(num))
    }
    
    return res.isEmpty ? [-1] : res
}