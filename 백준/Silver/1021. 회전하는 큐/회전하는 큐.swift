let line = readLine()!.split(separator: " ").map { Int($0)! }
var nums = readLine()!.split(separator: " ").map { Int($0)! }

var queue = Array(1...line[0]) // 1...10
var result = 0

for num in nums { // line[1] 수만큼 탐색 예정.
    let findNum = queue.firstIndex(of: num)! // 이동할 거리임.
    if findNum == 0 {
        // 이동할 필요없음.
        queue.removeFirst()
    } else {
        if findNum < queue.count - findNum || findNum == queue.count - findNum {
            // 좌측으로 이동.
            result += findNum
        } else {
            // 우측으로 이동.
            result += queue.count - findNum
        }
        queue.append(contentsOf: queue[0...findNum-1])
        queue.removeFirst(findNum + 1)
    }
}

print(result)