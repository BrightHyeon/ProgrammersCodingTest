func solution(_ s:String, _ n:Int) -> String {
    return s.map {
        var ascii = Int(UnicodeScalar(String($0))!.value)
        switch ascii {
            case 65...90:
            ascii = (ascii + n - 65) % 26 + 65
            case 97...122:
            ascii = (ascii + n - 97) % 26 + 97
            default:
                break
        }
        return String(UnicodeScalar(ascii)!)
    }.joined()
}