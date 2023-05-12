import Foundation

var tree: [String: [String]] = [:]
var res = ""

for _ in 1...Int(readLine()!)! {
    let input = readLine()!.components(separatedBy: " ")
    tree[input[0]] = [input[1], input[2]]
}

func order(_ node: String, _ type: Int) {
    let sub = tree[node]!
    if type == 0 {
        res += node
    }
    if sub[0] != "." {
        order(sub[0], type)
    }
    if type == 1 {
        res += node
    }
    if sub[1] != "." {
        order(sub[1], type)
    }
    if type == 2 {
        res += node
    }
}

for n in 0...2 {
    order("A", n)
    print(res); res = ""
}