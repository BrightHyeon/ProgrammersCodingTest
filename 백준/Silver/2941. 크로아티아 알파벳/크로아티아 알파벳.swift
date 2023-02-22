import Foundation

let arr = ["c=", "c-", "dz=", "d-", "lj", "nj", "s=", "z="]
var word = readLine()!
for i in arr {
    word = word.replacingOccurrences(of: i, with: "0")
}
print(word.count)