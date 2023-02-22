var count = 0
for _ in 1...Int(readLine()!)! {
    var arr = [String]()
    var now = ""
    for i in readLine()! where now != String(i) {
        if arr.contains(String(i)) {
            count -= 1
            break
        } else {
            arr.append(now)
            now = String(i)
        }
    }
    count += 1
}
print(count)