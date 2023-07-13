import Foundation

func solution(_ a: String, _ b: String) -> String {
    var res = ""
    var moreThanTen = false
    var x: [Character], y: [Character]
    
    if a.count >= b.count {
        x = Array(a).reversed()
        y = Array(b).reversed()
    } else {
        y = Array(a).reversed()
        x = Array(b).reversed()
    }
    
    for idx in 0..<x.count {
        if idx < y.count {
            var num = Int(String(x[idx]))! + Int(String(y[idx]))!
            if moreThanTen {
                num += 1
                if idx != x.count-1 {
                    res += String(String(num).last!)
                } else {
                    res += String(num).reversed()
                }
                num < 10 ? moreThanTen.toggle() : ()
            } else {
                if idx != x.count-1 {
                    res += String(String(num).last!)
                } else {
                    res += String(num).reversed()
                }
                num >= 10 ? moreThanTen.toggle() : ()
            }
        } else {
            var num = Int(String(x[idx]))!
            if moreThanTen {
                num += 1
            }
            if num >= 10 {
                moreThanTen = true
            } else {
                moreThanTen = false
            }
            if idx != x.count-1 {
                res += String(String(num).last!)
            } else {
                res += String(num).reversed()
            }
        }
    }
    
    return String(res.reversed())
}