import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var arr = Array(my_string)
    arr.swapAt(num1, num2)
    return arr.map{ String($0) }.joined()
}