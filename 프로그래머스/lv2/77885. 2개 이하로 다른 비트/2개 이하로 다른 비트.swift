import Foundation

func solution(_ numbers: [Int64]) -> [Int64] {
    func find(_ num: Int64) -> Int64 {
        var binary = String(num, radix: 2)
        if binary.last! == "0" {
            binary.removeLast()
            binary.append("1")
            return Int64(binary, radix: 2)!
        } else if !binary.contains("0") {
            var newB = "10" + binary
            newB.removeLast()
            return Int64(newB, radix: 2)!
        } else {
            var arr: [String] = []
            for i in binary {
                arr.append(String(i))
            }
            let index = arr.lastIndex(of: "0")!
            arr[index] = "1"
            arr[index+1] = "0"
            return Int64(String(arr.joined(separator: "")), radix: 2)!
        }
    }
    return numbers.map {find($0)}
}