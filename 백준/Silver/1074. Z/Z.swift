import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
var N = input[0], r = input[1], c = input[2]
var res = 0

func checkArea() -> Int {
    let half = Int(pow(2, Double(N))) / 2
    switch (r, c) {
    case (..<half, ..<half): return 0
    case (..<half, half...): return 1
    case (half..., ..<half): return 2
    default: return 3
    }
}

func find() -> Int {
    let area = checkArea()
    if N != 1 {
        res += Int(pow(2, Double(2*N)-2)) * area
        let half = Int(pow(2, Double(N))) / 2
        switch area {
        case 1: c -= half
        case 2: r -= half
        case 3: r -= half; c -= half
        default: break
        }
        N -= 1;
        return find()
    } else {
        return res + area
    }
}

print(find())