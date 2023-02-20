let all = Set(1...30)
var students = [Int]()

for _ in 1...28 {
    let num = Int(readLine()!)!
    students.append(num)
}

let noShow = all.subtracting(students)
print(noShow.min()!)
print(noShow.max()!)