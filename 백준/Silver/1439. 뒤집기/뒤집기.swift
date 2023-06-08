var zero = 0, one = 0
var pre: Character = "2"

for i in readLine()! {
    if pre != i {
        i == "0" ? (zero += 1) : (one += 1)
        pre = i
    }
}

print(min(zero, one))