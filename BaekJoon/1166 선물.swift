func maxN(_ l: Double, _ w: Double, _ h: Double, num: Double) -> Double {
    return Double(Int(l/num)*Int(w/num)*Int(h/num))
}
let input = readLine()!.split(separator: " ").map { Double($0)! }
let (n, l, w, h) = (input[0], input[1], input[2], input[3])
let min = [l, w, h].min()!
var (low, num, high) = (0.0, min, min)
var count = 0
if maxN(l, w, h, num: high) >= n {
    print(min)
} else {
    while true {
        maxN(l, w, h, num: num) < n ? (high = num) : (low = num)
        let pre = num
        num = (low + high) / 2
        if pre == num { print(num); break }
    }
}
