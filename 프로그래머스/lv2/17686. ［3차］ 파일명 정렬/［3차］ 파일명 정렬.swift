func solution(_ files: [String]) -> [String] {

    var sortingFiles: [[String]] = []
    
    for file in files {
        var head = ""
        var num = ""
        var tail = ""
        var headFinished = false
        var numFinished = false
        for char in file {
            if Int(String(char)) == Optional(nil) && !headFinished {
                head.append(char)
            } else if Int(String(char)) != Optional(nil) && !numFinished {
                headFinished = true
                num.append(char)
            } else {
                numFinished = true
                tail.append(char)
            }
        }
        sortingFiles.append([head, num, tail])
    }
    return sortingFiles.sorted { Int($0[1])! < Int($1[1])! }.sorted {
        $0[0].lowercased() < $1[0].lowercased()
    }.map { $0.joined(separator: "") }
}