import Foundation

func solution(_ gems:[String]) -> [Int] {
    var res = [Int]()
    var dict = [String: Int]()
    let gemCount = Set(gems).count
    guard gemCount != 1 else { return [1, 1] }
    dict[gems.first!] = 1
    
    var l = 0, r = 0
    
    func moveL() {
        while dict.keys.count == gemCount {
            dict[gems[l], default: 0] -= 1
            if dict[gems[l], default: 0] == 0 {
                dict[gems[l]] = nil
            }
            l += 1
        }
        
        if res.isEmpty || (res[1]-res[0] > r-(l-1)) {
            res = [l-1, r]
        }
    }
    
    func moveR() {
        while !(dict.keys.count == gemCount) {
            if r != gems.count - 1 {
                r += 1
                dict[gems[r], default: 0] += 1
            } else {
                return
            }
        }
    }
    
    func moveLR() {
        while !(dict.keys.count == gemCount) {
            if r != gems.count - 1 {
                dict[gems[l], default: 0] -= 1
                if dict[gems[l], default: 0] == 0 {
                    dict[gems[l]] = nil
                }
                l += 1
                
                r += 1
                dict[gems[r], default: 0] += 1
            } else {
                return
            }
        }
    }
    
    moveR()
    moveL()
    
    while r != gems.count - 1 {
        moveLR()
        moveL()
    }
    
    return [res[0]+1, res[1]+1]
}