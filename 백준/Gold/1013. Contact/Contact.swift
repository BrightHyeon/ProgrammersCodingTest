enum Cases {
    case L
    case M
    case R
}

func check(_ str: String) -> Bool {
    let arr = Array(str)
    var res = "" // 얘 count도 생각하길.
    var active = false
    
    var pre = Cases.M, state = Cases.M
    
    for i in arr {
        if !active {
            if state == .M {
                // 1. 일단 start 지점만 생각.
                if i == "0" {
                    // 2. start + 0
                    pre = state
                    state = .R
                } else {
                    // 중립, 1 들어옴, pre가 L턴일 때,
                    if pre == .L {
                        active = true // state는 여전히 중립인걸로.
                    } else {
                        pre = state
                        state = .L
                    }
                }
            } else if state == .L {
                if i == "0" {
                    // L 상황일 때 0이 들어오는 건 ㄱㅊㄱㅊ
                } else {
                    // 문제는 1이 들어올 때임. 될 수도 안될 수도~!
                    if res.count >= 3 && res.suffix(2) == "00" {
                        pre = state
                        state = .M
                    } else {
                        return false
                    }
                }
            } else if state == .R {
                if i == "0" {
                    // R 진행 중에 0은 용납 x.
                    return false
                } else {
                    // 1 들어오면 이제 R 종료. 01 세트니까.
                    pre = state
                    state = .M
                }
            }
        } else {
            // active 상황일 때~!
            if i == "1" {
                if res.suffix(2) == "00" {
                    active = false
                    pre = .L
                    state = .M
                } else if res.suffix(2) == "10" {
                    active = false
                    pre = .R
                    state = .M
                }
            }
        }
        
        res += String(i)
        
    }
    
    if active {
        return !(res.last! == "0")
    } else {
        return state == .M
    }
}

for _ in 1...Int(readLine()!)! {
    print(check(readLine()!) ? "YES" : "NO")
}