extension Array {
    func have(_ str: [Character]) -> Bool {
        var have = true
        for idx in self.indices {
            if self[idx] as! Character == "." && str[idx] == "#" {
                have = false
                break
            }
        }
        return have
    }
}
let nums = [
    Array("####.##.##.####"),
    Array("..#..#..#..#..#"),
    Array("###..#####..###"),
    Array("###..####..####"),
    Array("#.##.####..#..#"),
    Array("####..###..####"),
    Array("####..####.####"),
    Array("###..#..#..#..#"),
    Array("####.#####.####"),
    Array("####.####..####")
]
var arr = Array(repeating: [Character](), count: 4)
var result = [9,9,9,9]
for _ in 1...5 {
    let input = readLine()!.split{$0==" "}
    for (idx, i) in input.enumerated() {
        arr[idx] += Array(i)
    }
}
for (idx, i) in arr.enumerated() {
    for (jdx, j) in nums.enumerated() {
        if j.have(i) {
            result[idx] = jdx
            break
        }
    }
}
print("\(result[0])\(result[1]):\(result[2])\(result[3])")
