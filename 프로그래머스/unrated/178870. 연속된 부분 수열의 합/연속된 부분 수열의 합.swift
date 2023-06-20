import Foundation

func solution(_ sequence: [Int], _ k: Int) -> [Int] {
    var ldx = 0, rdx = 0, sum = 0
    var res = [0, sequence.count-1]
    
    func isMin() -> Bool {
        sum == k && rdx-ldx < res[1]-res[0]
    }
    
    for i in sequence {
        sum += i
        if isMin() {
            res = [ldx, rdx]
        } else if sum > k {
            while sum > k {
                sum -= sequence[ldx]
                ldx += 1
            }
            isMin() ? (res = [ldx, rdx]) : ()
        }
        rdx += 1
    }
    
    return res
}