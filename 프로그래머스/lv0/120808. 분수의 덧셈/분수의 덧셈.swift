import Foundation

func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
    let num = calLCM(num1: num1, num2: num2)
    let denum = denum1 * (num / num1) + denum2 * (num / num2)
    let gcd = calGCD(num1: num, num2: denum)
    
    return [denum/gcd, num/gcd]
}

func calLCM(num1: Int, num2: Int) -> Int {
    let ratio = Double(max(num1, num2)) / Double(min(num1, num2))
    var mul = 1.0
    while round(ratio * mul * 1000000) / 1000000 != round(ratio * mul) {
        mul += 1
    }
    return max(num1, num2) * Int(mul)
}

func calGCD(num1: Int, num2: Int) -> Int {
    let lcm = calLCM(num1: num1, num2: num2)
    print(num1, num2)
    print(num1*num2, lcm)
    return num1*num2 / lcm
}