import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    let startNum = total/num - (num/2 + num%2 - 1)
    
    return Array(startNum...startNum+num-1)
}