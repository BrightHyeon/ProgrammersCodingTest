import Foundation

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var result = [Int]()
    
    var musics: Dictionary<String, [(Int, idx: Int)]> = [:]
    genres.enumerated().forEach {
        musics[$1, default: []] += [(plays[$0], $0)]
    }
    
    let sorted = musics.sorted { $0.value.reduce(0) { $0 + $1.0 } > $1.value.reduce(0) { $0 + $1.0 } }
    sorted.forEach { result += $0.value.sorted { $0.0 > $1.0 }.prefix(2).map { $0.idx } }
    
    return result
}