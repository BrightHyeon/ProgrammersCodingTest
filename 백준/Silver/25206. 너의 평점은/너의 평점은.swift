import Foundation

let standard = ["A+":4.5,"A0":4,"B+":3.5,"B0":3,"C+":2.5,"C0":2,"D+": 1.5,"D0":1,"F":0]
var sum = 0.0
var grades = 0.0
for _ in 1...20 {
    let grade = readLine()!.components(separatedBy: " ")
    if grade[2] != "P" {
        sum += Double(grade[1])! * standard[grade[2]]!
        grades += Double(grade[1])!
    }
}
print(grades == 0 ? 0.0 : sum / grades)