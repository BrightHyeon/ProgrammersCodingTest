let input = readLine()!.split { $0 == " " }
var (a, b) = (Array(input[0]), Array(input[1]))
var min = a.count
for i in 0...b.count-a.count {
    var count = 0
    for (idx, j) in a.enumerated() where j != b[idx+i] {
        count += 1
    }
    if count < min {
        min = count
    }
}
print(min)
