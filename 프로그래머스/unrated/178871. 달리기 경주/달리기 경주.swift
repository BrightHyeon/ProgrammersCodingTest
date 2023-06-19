import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var names: [String: Int] = [:]
    var nums: [Int: String] = [:]
    
    for (idx, i) in players.enumerated() {
        names[i] = idx
        nums[idx] = i
    }
    
    for call in callings {
        // 먼저 호명된 선수의 등수를 파악.
        let num = names[call]!
        // 앞 선수가 누군지 파악.
        let pre = nums[num-1]!
        // 업데이트
        names[call] = num-1
        names[pre] = num
        nums[num-1] = call
        nums[num] = pre
    }
    
    return nums.sorted { $0.key < $1.key }.map { $0.value }
}