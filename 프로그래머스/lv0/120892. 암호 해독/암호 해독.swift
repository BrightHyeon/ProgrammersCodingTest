func solution(_ cipher:String, _ code:Int) -> String {
    return cipher.enumerated().reduce(into: "") {
        if ($1.offset + 1) % code == 0 {
            $0 += String($1.element)
        }
    }
}