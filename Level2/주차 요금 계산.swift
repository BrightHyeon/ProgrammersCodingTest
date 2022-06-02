//
//  주차 요금 계산.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/06/02.
//

import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    
    var dict: [String: String] = [:]
    var time: [String: Int] = [:]
    
    for i in records {
        let car = i.components(separatedBy: " ")
        if !dict.keys.contains(car[1]) {
            dict[car[1]] = car[0]
        } else {
            let enterTime = dict[car[1]]!.components(separatedBy: ":").map({Int($0)!})
            let exitTime = car[0].components(separatedBy: ":").map({Int($0)!})
            let mulTime = (exitTime[0]*60 + exitTime[1]) - (enterTime[0]*60 + enterTime[1])
            dict[car[1]] = nil
            if time[car[1]] != nil {
                time[car[1]]! += mulTime
            } else {
                time[car[1]] = mulTime
            }
        }
    }
    
    for (k, v) in dict {
        let enterTime = v.components(separatedBy: ":").map({Int($0)!})
        let mulTime = 1439 - (enterTime[0]*60 + enterTime[1])
        if time[k] != nil {
            time[k]! += mulTime
        } else {
            time[k] = mulTime
        }
    }
    for i in time {
        if i.value <= fees[0] {
            time[i.key] = fees[1]
        } else {
            let overTime = i.value - fees[0]
            if overTime % fees[2] == 0 {
                time[i.key] = fees[1] + (overTime/fees[2] * fees[3])
            } else {
                time[i.key] = fees[1] + ((overTime/fees[2]+1) * fees[3])
            }
        }
    }
    
    return Array(time.keys).sorted(by: {Int($0)! < Int($1)!}).map({ time[$0]! })
}
