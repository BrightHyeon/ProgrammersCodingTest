func solution(_ s:String, _ n:Int) -> String {
    var result: String = ""
    
    func convert(c: String) -> String {
        if c == " " {
            return " "
        } else {
            let ascii = Int(UnicodeScalar(c)!.value)
            if c == c.uppercased() {
                if ascii+n > 90 {
                    return String(UnicodeScalar(ascii+n-26)!)
                } else {
                    return String(UnicodeScalar(ascii+n)!)
                }
            } else {
                if ascii+n > 122 {
                    return String(UnicodeScalar(ascii+n-26)!)
                } else {
                    return String(UnicodeScalar(ascii+n)!)
                }
            }
        }
    }
    
    for i in s {
        result.append(convert(c: String(i)))
    }
    return result
}