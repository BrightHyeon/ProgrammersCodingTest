var res = 0.0
var dots: [[Double]] = []

for _ in 1...Int(readLine()!)! {
    dots.append(readLine()!.split(separator: " ").map { Double($0)! })
}

func getArea(_ a: [Double], _ b: [Double], _ c: [Double]) -> Double {
    let x = [b[0]-a[0], b[1]-a[1]]
    let y = [c[0]-a[0], c[1]-a[1]]
    return abs(x[0]*y[1] - x[1]*y[0]) / 2
}

for i in 0..<dots.count {
    for j in i..<dots.count where i < dots.count-2 {
        for k in j..<dots.count where j < dots.count-1 {
            let area = getArea(dots[i], dots[j], dots[k])
            res = max(res, area)
        }
    }
}

print(res)