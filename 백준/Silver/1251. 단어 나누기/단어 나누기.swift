let s = Array(readLine()!)
var list = [String]()

for i in 0..<s.count-2 {
    var str = ""
    str += String(s[0...i]).reversed()
    for j in i+1..<s.count-1 {
        var new = ""
        new += String(s[i+1...j]).reversed()
        new += String(s[j+1..<s.count]).reversed()
        list.append(str+new)
    }
}

print(list.min()!)