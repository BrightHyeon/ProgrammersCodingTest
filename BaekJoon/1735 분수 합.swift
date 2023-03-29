let n = readLine()!.split{ $0==" " }.map{ Int($0)! }
let m = readLine()!.split{ $0==" " }.map{ Int($0)! }

let a = n[0] * m[1] + m[0] * n[1]
let b = n[1] * m[1]

func gcd(_ a: Int, _ b: Int) -> Int {
    a%b == 0 ? b : gcd(b, a%b)
}

let g = gcd(a, b)
print(a / g , b / g)

