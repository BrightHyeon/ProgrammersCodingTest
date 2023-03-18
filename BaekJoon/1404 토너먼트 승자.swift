var dict: [[Int]: Double] = [:]
let percent = readLine()!.split { $0 == " "}.map { Double($0)!/100 }
var count = 0
var oppo = 7
var player = 0
for i in percent {
    count += 1
    dict[[player, player+count]] = i
    dict[[player+count, player]] = 1-i
    if count == oppo {
        count = 0
        oppo -= 1
        player += 1
    }
}
var canFinal = [Double]()
for i in 0...7 {
    let first = dict[[i, i%2==0 ? i+1 : i-1]]!
    let second: Double
    if i / 4 == 0 {
        if i / 2 == 0 {
            second = dict[[i, 2]]! * dict[[2, 3]]! + dict[[i, 3]]! * dict[[3, 2]]!
        } else {
            second = dict[[i, 0]]! * dict[[0, 1]]! + dict[[i, 1]]! * dict[[1, 0]]!
        }
    } else {
        if i / 2 == 2 {
            second = dict[[i, 6]]! * dict[[6, 7]]! + dict[[i, 7]]! * dict[[7, 6]]!
        } else {
            second = dict[[i, 4]]! * dict[[4, 5]]! + dict[[i, 5]]! * dict[[5, 4]]!
        }
    }
    canFinal.append(first * second)
}
var result = ""
for i in 0...7 {
    var sum = 0.0
    if i / 4 == 0 {
        for j in 4...7 {
            sum += dict[[i, j]]! * canFinal[j]
        }
    } else {
        for j in 0...3 {
            sum += dict[[i, j]]! * canFinal[j]
        }
    }
    result += "\(sum * canFinal[i]) "
}
result.removeLast()
print(result)
