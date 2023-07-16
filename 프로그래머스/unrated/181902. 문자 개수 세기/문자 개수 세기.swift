import Foundation

func solution(_ my_string: String) -> [Int] {
    var arr = Array(repeating: 0, count: 52)
    
    for i in my_string {
        var idx = Int(UnicodeScalar(String(i))!.value) % 65
        
        if i.isLowercase {
            idx -= 6
        }
        
        arr[idx] += 1
    }
    
    return arr
}