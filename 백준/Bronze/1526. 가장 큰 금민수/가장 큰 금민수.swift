import Foundation

let input = Int(readLine()!)!
var num = 4

while num <= input {
    var n = num
    
    var arr = Array(String(num))
    var allSeven = true
    
    for (idx, i) in arr.enumerated().reversed() {
        if i == "4" {
            arr[idx] = "7"
            allSeven = false
            break
        } else {
            arr[idx] = "4"
        }
    }
    
    if allSeven {
        arr = arr.map { _ in "4" }
        arr.append("4")
    }
    
    n = Int(String(arr))!
    
    if n > input {
        print(num)
        break
    } else {
        num = n
    }
}