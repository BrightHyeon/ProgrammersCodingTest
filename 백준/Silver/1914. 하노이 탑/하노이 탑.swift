import Foundation

var num = Int(readLine()!)!
print(pow(2, num) - 1)

if num <= 20 {
    hanoi(n: num, from: 1, by: 2, to: 3)
}

func move(from:Int, to:Int) {
    if num <= 20 {
        print("\(from) \(to)")
    }
}

func hanoi(n:Int, from:Int, by:Int, to:Int) {
    if n == 1 {
        move(from: from, to: to)
    } else {
        hanoi(n: n-1, from: from, by: to, to: by)
        move(from: from, to: to)
        hanoi(n: n-1, from: by, by: from, to: to)
    }
}
