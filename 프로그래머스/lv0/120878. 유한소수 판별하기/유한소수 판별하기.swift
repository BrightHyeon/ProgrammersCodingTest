import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    func gcd(_ a: Int, _ b: Int) -> Int {
        if a%b == 0 {
            return b
        } else {
            return gcd(b, a%b)
        }
    }
    
    var num = b / gcd(a, b)
    
    while num % 2 == 0 { num /= 2 }
    while num % 5 == 0 { num /= 5 }
    
    return num == 1 ? 1 : 2
}