let input = readLine()!.split(separator: " ")
let (str, n) = (String(input[0]), Int(input[1])!)
print(String(repeating: str, count: n))