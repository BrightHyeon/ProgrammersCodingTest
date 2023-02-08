import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    return Set(s1).intersection(Set(s2)).count
}