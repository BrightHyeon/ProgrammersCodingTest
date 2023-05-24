import Foundation

func toTimeString(_ n: Int) -> String {
    return "\(String(format: "%02d:%02d", n/60, n%60))"
}

func solution(_ n:Int, _ t:Int, _ m:Int, _ timetable: [String]) -> String {
    var times = [Int]()
    for i in timetable {
        let time = i.components(separatedBy: ":").map {Int($0)!}
        times.append(time[0] * 60 + time[1])
    }
    times = times.sorted(by: { num1, num2 in
        num1 > num2
    })

    var arrives = [Int]()
    var successMen = 0
    var lastMansTime = 0

    for i in 0..<n {
        let time = 9 * 60 + i * t
        if time <= 60 * 23 + 59 {
            arrives.append(time)
        }
    }

    var lastBusCnt = 0

    for (idx, i) in arrives.enumerated() {
        var count = 0

        while !times.isEmpty && count < m {
            let crue = times.last!
            if crue <= i && successMen < n * m {
                count += 1
                successMen += 1
                lastMansTime = times.removeLast()

                if idx == arrives.count - 1 {
                    lastBusCnt += 1
                }
            } else {
                break
            }
        }
    }

    if successMen == n * m || lastBusCnt == m {
        return toTimeString(lastMansTime - 1)
    } else {
        return toTimeString(arrives.last!)
    }
}