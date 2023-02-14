func solution(_ myString: String) -> [Int] {
    return myString.reduce([Int]()) {
        $1.isNumber ? ($0 + [Int(String($1))!]) : $0
    }.sorted()
}