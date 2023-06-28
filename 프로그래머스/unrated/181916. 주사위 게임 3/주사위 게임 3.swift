import Foundation

func solution(_ a: Int, _ b: Int, _ c: Int, _ d: Int) -> Int {
    let dict = Dictionary(grouping: [a,b,c,d]) { $0 }.sorted { $0.value.count > $1.value.count }
    
    if dict.count == 1 {
        return 1111 * dict[0].key
    } else if dict.count == 2 {
        if dict[0].value.count == 3 {
            return (10 * dict[0].key + dict[1].key) * (10 * dict[0].key + dict[1].key)
        } else {
            return (dict[0].key + dict[1].key) * (abs(dict[0].key - dict[1].key))
        }
    } else if dict.count == 3 {
        return dict[1].key * dict[2].key
    } else {
        return [a, b, c, d].min()!
    }
}