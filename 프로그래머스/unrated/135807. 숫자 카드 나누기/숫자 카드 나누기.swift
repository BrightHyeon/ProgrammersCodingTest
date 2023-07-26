import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if a % b == 0 {
        return b
    } else {
        return gcd(b, a % b)
    }
}

func solution(_ arrayA: [Int], _ arrayB: [Int]) -> Int {
    let sortA = arrayA.sorted()
    let sortB = arrayB.sorted()
    
    var gcdA = sortA[0]
    var gcdB = sortB[0]
    
    for i in 0..<sortA.count {
        gcdA = gcd(gcdA, sortA[i])
        if gcdA == 1 {
            break
        }
    }

    for i in 0..<sortB.count {
        gcdB = gcd(gcdB, sortB[i])
        if gcdB == 1 {
            break
        }
    }
    
    for i in 0...sortB.count-1 {
        if sortB[i] % gcdA == 0 {
            gcdA = 0
            break
        }
    }
    
    for i in 0...sortA.count-1 {
        if sortA[i]%gcdB == 0 {
            gcdB = 0
            break
        }
    }
    
    return max(gcdA, gcdB)
}