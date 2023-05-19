enum Cases { case L, M, R }

func check(_ str: String) -> Bool {
    var res = ""
    var active = false
    var pre = Cases.M, state = Cases.M
    
    for i in str {
        if state == .M {
            if !active {
                if i == "0" {
                    pre = state
                    state = .R
                } else {
                    if pre == .L {
                        active = true
                    } else {
                        pre = state
                        state = .L
                    }
                }
            } else {
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
        } else if state == .L && i == "1" {
            if res.count >= 3 && res.suffix(2) == "00" {
                pre = state
                state = .M
            } else {
                return false
            }
        } else if state == .R {
            if i == "0" {
                return false
            } else {
                pre = state
                state = .M
            }
        }
        res += String(i)
    }
    return active ? !(res.last! == "0") : state == .M
}

for _ in 1...Int(readLine()!)! {
    print(check(readLine()!) ? "YES" : "NO")
}