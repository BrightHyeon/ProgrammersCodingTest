let n = Int(readLine()!)!
let pattern = readLine()!.split(separator: "*")

for _ in 1...n {
    let input = readLine()!
    if input.prefix(pattern[0].count) == pattern[0],
       input.suffix(pattern[1].count) == pattern[1] {
        if pattern[0].count + pattern[1].count > input.count {
            print("NE")
        } else {
            print("DA")
        }
    } else {
        print("NE")
    }
}