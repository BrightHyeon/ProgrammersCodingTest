//
//  신고 결과 받기.swift
//  ProgrammersCodingTest
//
//  Created by HyeonSoo Kim on 2022/01/26.
//

import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    
    let reportSet = Array(Set(report))
    var reporters = [String: [String]]()
    var result = [String: Int]()
    var list = [String]()
    var final = [Int]()
    
    for i in id_list {
        reporters[i] = []
        result[i] = 0
    }
    for i in reportSet {
        if reporters.keys.contains(i.components(separatedBy: " ")[1]) {
            reporters[i.components(separatedBy: " ")[1]]?.append(i.components(separatedBy: " ")[0])
        }
    }
    let criminal = reporters.filter{ $0.value.count >= k }.keys
    for i in criminal {
        if reporters.keys.contains(i) {
            list += reporters[i]!
        }
    }
    for i in list {
        if result.keys.contains(i) {
            result[i]! += 1
        }
    }
    for i in id_list {
        final.append(result[i]!)
    }
    return final
}
