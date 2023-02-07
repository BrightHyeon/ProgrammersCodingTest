import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var arr = [String]()
    var str: String = ""

    for i in my_str {
        str += String(i)
        if str.count == n {
            arr.append(str)
            str = ""
        }
    }
    
    if !str.isEmpty {
        arr.append(str)
    }

    return arr
}