func solution(_ m: Int, _ n: Int, _ board: [String]) -> Int {
    let board = board.map { Array($0) }
    var arr = Array(repeating: [Character](), count: n)
    var needRemove: Set<[Int]> = [[0,0]]
    var res = 0
    
    for i in 0..<n {
        for j in (0..<m).reversed() {
            arr[i].append(board[j][i])
        }
    }
    
    func check(_ r: Int, _ c: Int) {
        guard r < arr.count-1,
              c < arr[r+1].count-1,
              c < arr[r].count-1 else { return }
        let me = arr[r][c]
        if me == arr[r+1][c], me == arr[r][c+1], me == arr[r+1][c+1] {
            needRemove.insert([r, c])
            needRemove.insert([r+1, c])
            needRemove.insert([r, c+1])
            needRemove.insert([r+1, c+1])
        }
    }
    
    func cycle() {
        for (r, line) in arr.enumerated() {
            for (c, _) in line.enumerated() {
                check(r, c)
            }
        }
    }
    
    func remove() {
        for i in needRemove.sorted(by: { ($0[0], $0[1]) > ($1[0], $1[1]) }) {
            arr[i[0]].remove(at: i[1])
            res += 1
        }
    }
    
    while !needRemove.isEmpty {
        needRemove = []
        cycle()
        remove()
    }
    
    return res
}