import Foundation

var num = readLine()!
var count = 0
func checkNum() {
    if num.count == 1 { num = "0" + num }
}
func convert(numStr: String) {
    count += 1
    var numStr = numStr
    if numStr.count == 1 {
        numStr = "0" + numStr
    }
    let left = String(numStr.last!)
    let sum = Int(String(numStr.first!))! + Int(left)!
    let right = String(String(sum).last!)
    if left + right == num {
        print(count)
    } else {
        convert(numStr: left + right)
    }
}
checkNum()
convert(numStr: num)