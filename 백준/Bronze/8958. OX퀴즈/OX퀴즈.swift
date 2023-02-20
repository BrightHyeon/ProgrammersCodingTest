for _ in 1...Int(readLine()!)! {
    print(readLine()!.reduce(into: [0, 0], {
        if $1 == "O" {
            $0[1] += 1
            $0[0] += $0[1]
        } else {
            $0[1] = 0
        }
    })[0])
}