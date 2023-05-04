print(readLine()!.split(separator: " ").sorted{Int($0)!<Int($1)!}.joined(separator: " "))
