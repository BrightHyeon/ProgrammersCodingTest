func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result = [Int]()
    if array.count == 1 {
        return array
    } else {
        for j in commands {
            let arr = array[j[0]-1...j[1]-1].sorted(by: {
                $0 < $1
            })
            result.append(arr[j[2]-1])
        }
    }
    return result
}