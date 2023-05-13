let input = readLine()!.split(separator: " ").map { Int($0)! }
let x = input[0], y = input[1]

func gcd(_ a: Int, _ b: Int) -> Int {
    if a % b == 0 {
        return b
    } else {
        return gcd(b, a % b)
    }
}

print(x + y - gcd(x, y))