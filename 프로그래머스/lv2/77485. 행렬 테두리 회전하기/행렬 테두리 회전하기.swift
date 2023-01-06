import Foundation

func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    var arr = Array(repeating: [Int](), count: rows)
    var result = [Int]()
    
    for i in 1...rows*columns {
        arr[(i-1)/columns].append(i)
    }
    
    for i in queries {
        result.append(rotate(arr: &arr, i))
    }
    
    return result
}

func rotate(arr: inout [[Int]], _ query: [Int]) -> Int {
    let x1 = query[0]-1
    let y1 = query[1]-1
    let x2 = query[2]-1
    let y2 = query[3]-1
    
    var dict = [[Int]: Int]()
    
    for x in x1...x2 {
        if x == x1 {
            dict[[x, y1]] = arr[x+1][y1]
            for y in y1+1...y2 {
                dict[[x, y]] = arr[x][y-1]
            }
        } else if x == x2 {
            dict[[x, y2]] = arr[x-1][y2]
            for y in y1...y2-1 {
                dict[[x, y]] = arr[x][y+1]
            }
        } else {
            dict[[x, y1]] = arr[x+1][y1]
            dict[[x, y2]] = arr[x-1][y2]
        }
    }
    
    for (k, v) in dict {
        arr[k[0]][k[1]] = v
    }
    
    return dict.values.min()!
}