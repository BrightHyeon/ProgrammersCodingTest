func solution(_ lines: [String]) -> Int {
    // 일단 그냥 포함이란 말을 이렇게 해석하셈. 끝 시간 - 처리시간 + 0.001초.? ㅇㅇ.
    // 날짜는 버려. 고정이니까.
    var times = [[Int]]()
    
    for i in lines {
        let split = i.split(separator: " ")
        let pos = split[1].split(separator: ":").map { Double($0)! }
        var two = split[2]; two.removeLast()
        
        let time1 = pos[0] * 3600 + pos[1] * 60 + pos[2]
        let time2 = Double(two)!
        
        times.append([Int((time1 - time2 + 0.001) * 1000), Int(time1 * 1000)])
    }
    
    var max = 0
    
    for i in times {
        for time in i {
            var res = 0
            for log in times {
                let min = time, max = time+999
                if log[0] <= max, log[1] >= min {
                    res += 1
                }
            }
            if res > max { max = res }
        }
    }
    
    return max
}