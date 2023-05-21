import Foundation

var end = ""
var res = ""

while end != "E-N-D" {
    var separators = CharacterSet.punctuationCharacters
    separators.insert(" ")
    separators.remove("-")
    let line = readLine()!.components(separatedBy: separators)
    for i in line {
        if i.count > res.count, i != "E-N-D" {
            res = i
        }
    }
    
    end = line.last ?? ""
}

print(res.lowercased())