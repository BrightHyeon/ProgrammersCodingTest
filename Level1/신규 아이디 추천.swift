//
//  신규 아이디 추천.swift
//  ProgrammersCodingTest
//
//  Created by HyeonSoo Kim on 2022/01/29.
//

import Foundation

func solution(_ new_id:String) -> String {
    
    let enable: [Character] = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","-","_","."]
    let first = new_id.lowercased() //Step1
    var second = Array(first.filter{ enable.contains($0) || $0.isNumber }) //Step2
    var third = ""
    while String(second).contains("..") { //Step3
        for (idx, i) in second.enumerated() {
            if i == ".", second[idx + 1] == "." {
                second.remove(at: idx)
                break
            }
        }
    }
    if second[0] == "." { second.remove(at: 0) } //Step4
    if !(second.count == 0) {
        if second[second.count-1] == "." { second.remove(at: second.count-1) }
    }
    if second.count == 0 { second.append("a") } //Step5
    if second.count >= 16 { //Step6-1
        third = String(second[0...14])
    } else {
        third = String(second)
    }
    if third[third.index(before: third.endIndex)] == "." { //Step6-2
        third.remove(at: third.index(before: third.endIndex))
    }
    if third.count <= 2 {
        while third.count < 3 {
            third += "\(third[third.index(before: third.endIndex)])"
        }
    }
    return third
}
