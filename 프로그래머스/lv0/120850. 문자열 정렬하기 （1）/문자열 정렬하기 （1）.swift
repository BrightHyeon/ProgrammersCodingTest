func solution(_ myString: String) -> [Int] {
    return myString.reduce([Int]()) {
        Int(String($1)) != Optional(nil) ? ($0 + [Int(String($1))!]) : $0
    }.sorted()
}