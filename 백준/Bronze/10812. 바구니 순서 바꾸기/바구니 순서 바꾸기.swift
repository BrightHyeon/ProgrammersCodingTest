let NM = readLine()!.split(separator: " ").map { Int($0)! }
var arr = Array(1...NM[0])
for _ in 1...NM[1] {
    let ijk = readLine()!.split(separator: " ").map { Int($0)!-1 }
    let (l, r, m) = (ijk[0], ijk[1], ijk[2])
    arr[l...r] = arr[m...r] + (l != m ? arr[l...m-1] : [])
}
print(arr.map { String($0) }.joined(separator: " "))