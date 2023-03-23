let n = Int(readLine()!)!
let arr = readLine()!.split{$0==" "}.map{Int($0)!}
var res = [Int]()
for i in (1...n).reversed() {
    res.insert(i, at: arr[i-1])
}
print(res.map{String($0)}.joined(separator: " "))
