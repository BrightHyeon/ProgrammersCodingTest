var res: [Int] = []

for _ in 1...Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    var ans = 0
    let M = input[0], N = input[1], K = input[2]
    var arr = Array(repeating: Array(repeating: (0, false), count: M), count: N)
    var spots: [[Int]] = []
    
    for _ in 1...K {
        let spot = readLine()!.split(separator: " ").map { Int($0)! }
        arr[spot[1]][spot[0]] = (1, false)
        spots.append(spot)
    }
    
    func search(_ spot: [Int]) {
        arr[spot[1]][spot[0]].1 = true
        for i in [[-1, 0], [1, 0], [0, -1], [0, 1]] {
            let newC = spot[0] + i[0], newR = spot[1] + i[1]
            if newC >= 0, newR >= 0, newC < M, newR < N,
               arr[newR][newC].0 == 1, !arr[newR][newC].1 {
                search([newC, newR])
            }
        }
    }
    
    for spot in spots where !arr[spot[1]][spot[0]].1 {
        search(spot)
        ans += 1
    }
    
    res.append(ans)
}

for count in res {
    print(count)
}