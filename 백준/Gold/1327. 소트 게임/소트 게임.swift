let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0], K = input[1]
var res = 0
var find = false
var arr = readLine()!.split(separator: " ").map { Int($0)! }
var visited = Set<[Int]>()
var willReverse = [[Int]]()

func reverse(_ arr: [Int], _ index: Int) -> [Int] {
    var arr = arr
    arr = Array(arr[0..<index] + arr[index..<index+K].reversed() + arr[index+K..<arr.count])
    return arr
}

if arr == Array(1...N) {
    print(0)
    find = true
} else {
    willReverse = [arr]
    outerloop: while !willReverse.isEmpty {
        res += 1
        for arr in willReverse {
            willReverse.removeFirst()
            for idx in 0...N-K {
                let arr = reverse(arr, idx)
                if arr == Array(1...N) {
                    print(res)
                    find = true
                    break outerloop
                }
                if !visited.contains(arr) {
                    visited.insert(arr)
                    willReverse.append(arr)
                }
            }
        }
    }
}

if !find { print(-1) }