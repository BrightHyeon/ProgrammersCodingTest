import Foundation

func solution(_ info: [String], _ query: [String]) -> [Int] {

    var dict: [String: [Int]] = [:]
    var result: [Int] = []

    for i in info {
        let arr = i.components(separatedBy: " ")
        let languages = [arr[0], "-"]
        let jobs = [arr[1], "-"]
        let careers = [arr[2], "-"]
        let soulFoods = [arr[3], "-"]
        let score = Int(arr[4])!
        
        for language in languages{
            for job in jobs{
                for career in careers {
                    for soulFood in soulFoods {
                        let key = "\(language)\(job)\(career)\(soulFood)"
                        if dict[key] == nil {
                            dict[key] = [score]
                        } else {
                            dict[key]?.append(score)
                        }
                    }
                }
            }
        }
    }
    
    for i in dict {
        let sortArr = i.value.sorted()
        dict[i.key] = sortArr
    }

    for i in query {
        var arr = i.components(separatedBy: " and ")
        let last = arr.removeLast()
        arr.append(last.components(separatedBy: " ")[0])
        let key = arr.joined(separator: "")
        let score = Int(last.components(separatedBy: " ")[1])!

        var count = 0

        if let arr = dict[key] {
            var low = 0
            var high = arr.count - 1
            var mid = 0
            
            while low <= high {
                mid = (low + high) / 2
                if arr[mid] < score {
                    low = mid + 1
                } else {
                    high = mid - 1
                }
            }
            count += arr.count - low
        }
        result.append(count)
    }
    return result
}