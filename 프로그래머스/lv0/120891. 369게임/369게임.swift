import Foundation

func solution(_ order:Int) -> Int {
    let arr = Array(String(order)).map { Int(String($0))! }
    return arr.filter { $0 % 3 == 0 && $0 != 0 }.count
}