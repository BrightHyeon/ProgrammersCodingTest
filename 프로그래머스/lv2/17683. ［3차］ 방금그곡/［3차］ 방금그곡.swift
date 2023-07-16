func solution(_ m: String, _ musicinfos: [String]) -> String {
    var res = ("", 0)
    
    func removeHash(_ str: String) -> String {
        str.reduce(into: "") { $0 += ($1 != "#" ? String($1) : $0.removeLast().lowercased()) }
    }
    
    func getTime(_ s: String, _ e: String) -> Int {
        let s = s.components(separatedBy: ":").map { Int($0)! }
        let e = e.components(separatedBy: ":").map { Int($0)! }
        return (e[0]*60+e[1]) - (s[0]*60+s[1])
    }
    
    for i in musicinfos {
        let info = i.components(separatedBy: ",")
        let time = getTime(info[0], info[1])
        let song = Array(removeHash(info[3]))
        var play = ""
        
        for i in 0..<time {
            play += String(song[i%song.count])
        }
        
        if play.contains(removeHash(m)) && time > res.1 {
            res = (info[2], time)
        }
    }
    
    return res.0.isEmpty ? "(None)" : res.0
}