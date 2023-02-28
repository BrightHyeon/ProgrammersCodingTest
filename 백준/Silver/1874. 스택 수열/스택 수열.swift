let n = Int(readLine()!)!
var answer = [Int]()
for _ in 1...n {
    answer.append(Int(readLine()!)!)
}

var stack = [Int]()
var (num, idx) = (1, 0)
var result = [String]()

while idx != n {
    if answer[idx] >= num {
        result.append("+")
        if answer[idx] == num {
            result.append("-")
            idx += 1
        } else {
            stack.append(num)
        }
        num += 1
    } else {
        if stack.last! == answer[idx] {
            result.append("-")
            stack.removeLast()
            idx += 1
        } else {
            result = ["NO"]
            break
        }
    }
}

for i in result {
    print(i)
}