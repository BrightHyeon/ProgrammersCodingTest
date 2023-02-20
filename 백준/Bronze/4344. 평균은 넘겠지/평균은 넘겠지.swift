import Foundation

for _ in 1...Int(readLine()!)! {
    var line = readLine()!.components(separatedBy: " ").map { Double($0)! }
    let total = line.removeFirst()
    var sum: Double = 0

    for score in line {
        sum += score
    }

    let pass = Double(line.filter { $0 > sum / total }.count)
    var str = "\(round(pass / Double(line.count) * 100000) / 1000)"
    
    while str.components(separatedBy: ".")[1].count != 3 {
        str += "0"
    }
    
    print("\(str)%")
}