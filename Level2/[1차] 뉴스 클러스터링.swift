//
//  [1차] 뉴스 클러스터링.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/05/30.
//

//MARK: - [1차] 뉴스 클러스터링
//자카드 유사도
//A, B 사이의 자카드 유사도 J(A, B)는 두 집합의 교집합 크기를 두 집합의 합집합 크기로 나눈 값으로 정의된다.
//요약: 교집합크기/합집합크기.

import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    var str1Arr: [String] = []
    var str2Arr: [String] = []
    var str: String = ""
    
    for i in str1 {
        if i.lowercased() >= "a" && i.lowercased() <= "z" {
            if str.count == 0 {
                str += String(i).lowercased()
            } else {
                str += String(i).lowercased()
                str1Arr.append(str)
                str.removeFirst()
            }
        } else {
            str = ""
            continue
        }
    }
    str = ""
    for i in str2 {
        if (i >= "A" && i <= "Z") || (i >= "a" && i <= "z") {
            if str.count == 0 {
                str += String(i).lowercased()
            } else {
                str += String(i).lowercased()
                str2Arr.append(str)
                str.removeFirst()
            }
        } else {
            str = ""
            continue
        }
    }
    var hap = 0
    var gyo = 0
    var arr: [String] = []
    for i in str1Arr {
        if !arr.contains(i) {
            hap += max(str1Arr.filter({$0 == i}).count, str2Arr.filter({$0 == i}).count)
            if str2Arr.contains(i) {
                gyo += min(str1Arr.filter({$0 == i}).count, str2Arr.filter({$0 == i}).count)
            }
        }
        arr.append(i)
    }
    for i in str2Arr {
        if !arr.contains(i) {
            hap += 1
        }
    }
    if hap == 0 {
        return 65536
    }
    return Int(Double(gyo) / Double(hap) * 65536)
}
