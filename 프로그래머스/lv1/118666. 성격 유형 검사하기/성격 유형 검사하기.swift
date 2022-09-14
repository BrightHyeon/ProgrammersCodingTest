import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var cases: [[String]] = [["0","R","T"],["0","C","F"],["0","J","M"],["0","A","N"]]
    
    func path(a: Int, b: Int, choice: Int, _ type: String) -> String {
        return String(Int(cases[a][b])! - (type == "+" ? (choice-4) : -(choice-4)))
    }
    
    func calculate(type: String, _ choice: Int) {
        switch type {
        case "RT":
            cases[0][0] = path(a: 0, b: 0, choice: choice, "-")
        case "TR":
            cases[0][0] = path(a: 0, b: 0, choice: choice, "+")
        case "CF":
            cases[1][0] = path(a: 1, b: 0, choice: choice, "-")
        case "FC":
            cases[1][0] = path(a: 1, b: 0, choice: choice, "+")
        case "JM":
            cases[2][0] = path(a: 2, b: 0, choice: choice, "-")
        case "MJ":
            cases[2][0] = path(a: 2, b: 0, choice: choice, "+")
        case "AN":
            cases[3][0] = path(a: 3, b: 0, choice: choice, "-")
        case "NA":
            cases[3][0] = path(a: 3, b: 0, choice: choice, "+")
        default:
            break
        }
    }
    
    for idx in survey.indices {
        calculate(type: survey[idx], choices[idx])
    }

    return cases.map {
        return Int($0[0])! > 0 ? $0[2] : $0[1]
    }.joined(separator: "")
}