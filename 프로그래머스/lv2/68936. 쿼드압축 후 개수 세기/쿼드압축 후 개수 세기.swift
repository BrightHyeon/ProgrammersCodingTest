import Foundation

func solution(_ arr:[[Int]]) -> [Int] {
    
    var zeroCount = 0
    var oneCount = 0
    
    func divide(_ arr: [Int]) {
        if Set(arr).count == 1 {
            if arr.last! == 0 {
                zeroCount += 1
            } else {
                oneCount += 1
            }
        } else {
            var lt: [Int] = []
            var rt: [Int] = []
            var lb: [Int] = []
            var rb: [Int] = []
            for (idx, i) in arr.enumerated() {
                let sq = sqrt(Double(arr.count))
                if idx < arr.count/2 {
                    if (idx % Int(sq)) / (Int(sq)/2) == 0 {
                        lt.append(i)
                    } else {
                        rt.append(i)
                    }
                } else {
                    if (idx % Int(sq)) / (Int(sq)/2) == 0 {
                        lb.append(i)
                    } else {
                        rb.append(i)
                    }
                }
            }
            divide(lt)
            divide(rt)
            divide(lb)
            divide(rb)
        }
    }
    var firstArr: [Int] = []
    
    for i in arr {
        for j in i {
            firstArr.append(j)
        }
    }
    
    divide(firstArr)
    
    return [zeroCount, oneCount]
}