func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var arr = numbers
    direction == "left" ? arr.append(arr.removeFirst()) : arr.insert(arr.removeLast(), at: 0)
    return arr
}