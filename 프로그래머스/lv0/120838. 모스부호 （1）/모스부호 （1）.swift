import Foundation

func solution(_ letter: String) -> String {
    var dict: [String: String] = [:]
    let morse: String = "'.-':'a','-...':'b','-.-.':'c','-..':'d','.':'e','..-.':'f','--.':'g','....':'h','..':'i','.---':'j','-.-':'k','.-..':'l','--':'m','-.':'n','---':'o','.--.':'p','--.-':'q','.-.':'r','...':'s','-':'t','..-':'u','...-':'v','.--':'w','-..-':'x','-.--':'y','--..':'z'"
    
    morse.replacingOccurrences(of: "'", with: "").components(separatedBy: ",").forEach {
        dict[$0.components(separatedBy: ":")[0]] = $0.components(separatedBy: ":")[1]
    }
    
    return letter.components(separatedBy: " ").reduce("") { $0 + dict[$1]! }
}