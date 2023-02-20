let word = Array(readLine()!)
var result = [String]()

for i in 97...122 {
    let alphabet = Character(UnicodeScalar(i)!)
    let index = word.firstIndex(of: alphabet) ?? -1
    result.append(String(index))
}

print(result.joined(separator: " "))