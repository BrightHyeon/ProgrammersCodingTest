import Foundation

func solution(_ num_list: [Int]) -> Int {
    func numberOfOperation(_ num: Int) -> Int {
        var num = num, res = 0
        while num != 1 {
            if num % 2 != 0 {
                num -= 1
            }
            num /= 2
            res += 1
        }
        return res
    }
    return num_list.reduce(0) { $0 + numberOfOperation($1) }
}
