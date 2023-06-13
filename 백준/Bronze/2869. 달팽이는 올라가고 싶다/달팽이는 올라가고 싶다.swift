let input = readLine()!.split(separator: " ").map { Int($0)! }
let a = input[0], b = input[1], v = input[2]
print((v-a)/(a-b) + ((v-a)%(a-b) == 0 ? 1 : 2))