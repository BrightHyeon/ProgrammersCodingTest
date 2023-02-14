import Foundation

func solution(_ myString:String) -> String {
    return myString.reduce("") {
        $0 + (!$0.contains($1) ? String($1) : "")
    }
}