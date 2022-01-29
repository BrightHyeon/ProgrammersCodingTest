//
//  가장 큰 수.swift
//  ProgrammersCodingTest
//
//  Created by HyeonSoo Kim on 2022/01/29.
//

import Foundation

func solution(_ numbers:[Int]) -> String {
    
    let arr =  numbers.map{String($0)}.sorted{$0+$1>$1+$0}.joined(separator: "")
    
    if arr[arr.startIndex] == "0" { return "0" }
    
    return arr
}
