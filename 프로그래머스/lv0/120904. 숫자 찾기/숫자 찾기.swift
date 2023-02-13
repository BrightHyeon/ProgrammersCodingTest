import Foundation

func solution(_ num: Int, _ k: Int) -> Int {
    return (Array(String(num)).firstIndex(of: Character(String(k))) ?? -2) + 1
}