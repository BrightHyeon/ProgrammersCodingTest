let _ = readLine()!
let a = Set(readLine()!.split(separator: " "))
let b = Set(readLine()!.split(separator: " "))
print(a.count + b.count - a.intersection(b).count * 2)
