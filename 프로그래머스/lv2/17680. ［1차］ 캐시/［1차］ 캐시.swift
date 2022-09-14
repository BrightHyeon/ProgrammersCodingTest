import Foundation

func solution(_ cacheSize: Int, _ cities: [String]) -> Int {
    
    var cache: [String] = []
    var time = 0
    
    guard cacheSize != 0 else { return 5 * cities.count }
    
    for i in cities {
        let low = i.lowercased()
        if cache.contains(low) {
            time += 1
            cache.remove(at: cache.firstIndex(of: low)!)
            cache.append(low)
        } else {
            time += 5
            if cache.count == cacheSize {
                cache.removeFirst()
                cache.append(low)
            } else {
                cache.append(low)
            }
        }
    }
    return time
}