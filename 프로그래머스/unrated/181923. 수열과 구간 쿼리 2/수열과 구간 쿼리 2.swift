import Foundation

func solution(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
    let res = queries.reduce(into: [Int]()) { res, query in
        let arr = arr[query[0]...query[1]].sorted()
        if arr.last! <= query[2] {
            res.append(-1)
        } else {
            for i in arr where i > query[2] {
                return res.append(i)
            }
        }
    }
    return res
}