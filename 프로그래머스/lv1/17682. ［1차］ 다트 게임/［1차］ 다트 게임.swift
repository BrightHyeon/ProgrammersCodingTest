import Foundation

func solution(_ dartResult: String) -> Int {
    var nums = [0, 0, 0]
    var sdts = [Character]()
    var symbols = ["", "", ""]
    var cycle = -1
    var nowNum = ""
    
    for i in dartResult {
        if i.isNumber {
            nowNum += String(i)
        } else {
            if !nowNum.isEmpty {
                cycle += 1
                nums[cycle] = Int(nowNum)!
                nowNum = ""
            }
            
            if i == "S" || i == "D" || i == "T" {
                sdts.append(i)
            } else {
                symbols[cycle] = String(i)
            }
        }
    }
    
    var res = 0
    
    for i in 0..<3 {
        let sdt = sdts[i]
        if sdt == "D" {
            nums[i] = nums[i] * nums[i]
        } else if sdt == "T" {
            nums[i] = nums[i] * nums[i] * nums[i]
        }
    }
    
    for i in 0..<3 {
        let symbol = symbols[i]
        if symbol == "*" {
            nums[i] *= 2
            if i-1 >= 0 {
                nums[i-1] *= 2
            }
        } else if symbol == "#" {
            nums[i] = -nums[i]
        }
    }
    
    return nums.reduce(0, +)
}
