import Foundation

let num = Int(readLine()!)!
var arr = [(start: Int, end: Int)]()
var rooms = [0]
var least = 0

for _ in 0..<num {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let start = input[1], end = input[2]
    arr.append((start, end))
}
arr.sort { $0.start < $1.start }

for lecture in arr {
    if lecture.start < least {
        rooms.append(lecture.end)
        least = min(least, lecture.end)
    } else {
        var find = false
        for i in 0..<rooms.count {
            if rooms[i] <= lecture.start {
                rooms[i] = lecture.end
                find = true
                break
            }
        }
        if !find {
            rooms.append(lecture.end)
            least = min(least, lecture.end)
        }
    }
}

print(rooms.count)