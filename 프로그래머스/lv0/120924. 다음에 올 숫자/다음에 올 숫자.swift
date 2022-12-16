import Foundation

func solution(_ common:[Int]) -> Int {
    var isAdd: Bool = false
    
    if (common[0] - common[1]) == (common[1] - common[2]) {
        isAdd = true
    }
    
    return isAdd ? common.last! + (common.last! - common[common.count - 2]) : common.last! * (common.last! / common[common.count - 2])
}