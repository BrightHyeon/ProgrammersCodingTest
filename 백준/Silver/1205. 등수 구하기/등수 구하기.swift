let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0], score = input[1], p = input[2]

var mine = 51

if n == 0 {
    print(1)
} else {
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    
    for (idx, i) in arr.enumerated() {
        if i == score {
            mine = idx == p-1 ? -1 : idx + 1
            break
        } else if i < score {
            mine = idx + 1
            break
        }
    }
    
    if n == p {
        if score <= arr.last! {
            print(-1)
        } else {
            print(mine)
        }
    } else {
        print(mine == 51 ? n+1 : mine)
    }
}