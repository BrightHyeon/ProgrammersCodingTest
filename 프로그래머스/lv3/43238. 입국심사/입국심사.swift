import Foundation

func solution(_ n:Int, _ times:[Int]) -> Int {
    var minTime = 1
    var maxTime = times.max()! * n
    var midTime = (minTime + maxTime) / 2
    
    var avail = 0
    
    func setAvail() {
        avail = 0
        for time in times {
            avail += midTime / time
        }
    }
    
    setAvail()
    
    while minTime <= maxTime {
        midTime = (minTime + maxTime) / 2
        
        setAvail()
        
        if avail >= n {
            maxTime = midTime - 1
        } else {
            minTime = midTime + 1
        }
    }
    
    return minTime
}