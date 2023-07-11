import Foundation

func solution(_ my_string: String, _ queries: [[Int]]) -> String {
    var arr = Array(my_string)
    
    for i in queries {
        arr.replaceSubrange(i[0]...i[1], with: arr[i[0]...i[1]].reversed())
    }
    
    return String(arr)
}