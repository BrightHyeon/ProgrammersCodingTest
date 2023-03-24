var arr = (1...Int(readLine()!)!).map { _ in readLine()! }
arr.sort { $0.count < $1.count }
for i in arr.indices where i != arr.count-1 {
    for j in i+1...arr.count-1 {
        if arr[j].hasPrefix(arr[i]) {
            arr[i] = ""
            break
        }
    }
}
print(arr.filter{$0 != ""}.count)
