let input = readLine()!

var res = 0
var num = ""
var isPlus = true

for i in input {
    if i.isNumber {
        num += String(i)
    } else {
        if isPlus {
            res += Int(num)!
            num = ""
            if i == "-" {
                isPlus = false
            }
        } else {
            res -= Int(num)!
            num = ""
        }
    }
}

res += isPlus ? Int(num)! : -Int(num)!
print(res)