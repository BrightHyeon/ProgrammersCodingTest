import Foundation

func solution(_ n: Int) -> Int {
    var result: Int = 0
    
    guard n != 1 else { return 1 }
    guard n != 2 else { return 2 }
    
    func addPre(prePre: Int, pre: Int, count: Int) {
        let now = prePre + pre
        result = now%1234567
        if count != n {
            addPre(prePre: pre%1234567, pre: now%1234567, count: count + 1)
        }
    }
    addPre(prePre: 1, pre: 2, count: 3)
    
    return result
}