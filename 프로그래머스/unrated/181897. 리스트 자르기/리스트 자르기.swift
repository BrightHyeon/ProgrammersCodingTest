import Foundation

func solution(_ n: Int, _ slicer: [Int], _ num_list: [Int]) -> [Int] {
    let list = num_list, s = slicer
    
    switch n {
    case 1: return Array(list[0...s[1]])
    case 2: return Array(list[s[0]..<list.count])
    case 3: return Array(list[s[0]...s[1]])
    default: return Array(list[s[0]...s[1]]).enumerated().filter { $0.offset % s[2] == 0 }.map { $0.element }
    }
}