import Foundation

let NM = readLine()!.components(separatedBy: " ").map { Int($0)! }
var arr = Array(repeating: Array(repeating: 0, count: NM[1]), count: NM[0])
for i in 0...NM[0]-1 {
    let row = readLine()!.components(separatedBy: " ").map { Int($0)! }
    for (idx, num) in row.enumerated() {
        arr[i][idx] += num
    }
}
for i in 0...NM[0]-1 {
    let row = readLine()!.components(separatedBy: " ").map { Int($0)! }
    for (idx, num) in row.enumerated() {
        arr[i][idx] += num
    }
}
for i in arr {
    print(i.map { String($0) }.joined(separator: " "))
}