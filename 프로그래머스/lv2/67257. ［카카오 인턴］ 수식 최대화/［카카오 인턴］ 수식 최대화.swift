import Foundation

func solution(_ expression: String) -> Int {
    let operators = ["+-*", "+*-", "-+*", "-*+", "*+-", "*-+"]
    var arr: [String] = []
    var num = ""
    var res = 0
    
    for i in expression {
        if i.isNumber {
            num += String(i)
        } else {
            arr.append(num)
            num = ""
            arr.append(String(i))
        }
    }
    arr.append(num)
    
    for ope in operators {
        var arr = arr
        
        for i in ope {
            for (idx, j) in arr.enumerated() where String(i) == j {
                let x = Int(arr[idx-1])!, y = Int(arr[idx+1])!
                var num: Int
                
                switch j {
                case "+": num = x + y
                case "-": num = x - y
                default: num = x * y
                }
                
                arr[idx-1] = ""; arr[idx] = ""
                arr[idx+1] = String(num)
            }
            arr = arr.filter { !$0.isEmpty }
        }
        res = max(res, abs(Int(arr.first!)!))
    }
    return res
}