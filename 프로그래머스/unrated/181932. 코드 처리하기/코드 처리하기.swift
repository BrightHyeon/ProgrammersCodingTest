import Foundation

func solution(_ code: String) -> String {
    var mode = 0
    var res = ""
    
    code.enumerated().forEach { idx, i in
        if i == "1" {
            mode = (mode + 1) % 2
        } else {
            switch mode {
            case 0:
                if idx % 2 == 0 {
                    res.append(i)
                }
            default:
                if idx % 2 == 1 {
                    res.append(i)
                }
            }
        }
    }
    
    return res.isEmpty ? "EMPTY" : res
}