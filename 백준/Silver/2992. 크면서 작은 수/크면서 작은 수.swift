let num = readLine()!
var ip = Array(num)
var st = [Character]()

if ip.count == 1 {
    print(String(ip))
} else {
    while ip.count > 1 {
        st.append(ip.removeLast())
        if ip.last! < st.last! {
            for i in 0...st.count-1 {
                if st[i] > ip.last! {
                    let num = st[i]
                    st[i] = ip.last!
                    ip[ip.count-1] = num
                    break
                }
            }
            break
        }
    }
    let res = String(ip + (st.sorted()))
    print(num>=res ? 0 : res)
}