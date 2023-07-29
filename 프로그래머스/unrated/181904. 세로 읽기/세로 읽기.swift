func solution(_ my_string: String, _ m: Int, _ c: Int) -> String {
    my_string.enumerated().reduce("") { $0 + ($1.offset % m == c-1 ? String($1.element) : "") }
}