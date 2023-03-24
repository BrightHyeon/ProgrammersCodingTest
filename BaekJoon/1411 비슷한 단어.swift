extension Array where Element == Character {
    func isSym(_ c: Array) -> Bool {
        var dict = [Character: Character]()
        var arr = c
        for idx in arr.indices {
            if dict.keys.contains(arr[idx]) {
                arr[idx] = dict[arr[idx]]!
            } else {
                if dict.values.contains(self[idx]) {
                    return false
                } else {
                    dict[arr[idx]] = self[idx]
                    arr[idx] = self[idx]
                }
            }
        }
        return self == arr
    }
}
var arr = (1...Int(readLine()!)!).map { _ in Array(readLine()!) }
var res = 0
for i in 0...arr.count-2 {
    for j in i+1...arr.count-1 {
        if arr[i].isSym(arr[j]) {
            res += 1
        }
    }
}
print(res)
