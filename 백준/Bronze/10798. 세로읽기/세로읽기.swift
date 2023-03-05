var arr = [String]()
for _ in 1...5 {
    arr.append(readLine()!)
}
var result = ""
var idx = 0
while true {
    var word = ""
    for i in arr {
        if idx <= i.count-1 {
            word += String(Array(i)[idx])
        }
    }
    if word.isEmpty {
        break
    } else {
        result += word
        idx += 1
    }
}
print(result)