let input = readLine()!.split(separator: " ").map { Int($0)! }
let m = input[0], n = input[1], k = input[2]
var arr = Array(repeating: Array(repeating: 0, count: n), count: m)

for _ in 1...k {
    let pos = readLine()!.split(separator: " ").map { Int($0)! }
    let rows = [pos[1], pos[3]].sorted(), cols = [pos[0], pos[2]].sorted()
    for i in rows[0]..<rows[1] {
        for j in cols[0]..<cols[1] {
            arr[i][j] = 1
        }
    }
}

var count = 0
var nums = [Int]()

func search(_ r: Int, _ c: Int) {
    if !(r < 0 || c < 0 || r >= m || c >= n) && arr[r][c] == 0 { // 조건 확인.
        arr[r][c] = -1
        count += 1
        
        search(r+1, c)
        search(r-1, c)
        search(r, c+1)
        search(r, c-1)
    }
}

for r in 0..<m {
    for c in 0..<n {
        if arr[r][c] == 0 {
            search(r, c)
            nums.append(count)
            count = 0
        }
    }
}

print(nums.count)
print(nums.sorted().map { String($0) }.joined(separator: " "))