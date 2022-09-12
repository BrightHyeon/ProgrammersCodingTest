//
//  다리를 지나는 트럭.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/09/12.
//

// 다리를 지나는 트럭
import Foundation

func solution(_ bridge_length: Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    
    var timer: Int = 0
    var trucks: [Int] = truck_weights
    
    var onBridge: [[Int]] = [] // 현재 다리 위 트럭들
    var sum: Int { // 현재 다리 위 트럭들의 무게 총합
        return onBridge.map { $0[0] }.reduce(0) { $0 + $1 }
    }
    var isRemove: Bool = false
    
    while !trucks.isEmpty {
        for index in onBridge.indices { // 트럭들 체크
            onBridge[index][1] -= 1
            
            if onBridge[index][1] == 0 {
                isRemove = true
            }
        }
        if isRemove { // 다리를 지난 트럭은 제거
            onBridge.removeFirst()
            isRemove.toggle()
        }
        
        if (sum + trucks.last!) <= weight { // timer 조절 및 무게 체크해서 트럭 새로 추가
            timer += 1
            onBridge.append([trucks.popLast()!, bridge_length])
        } else {
            timer += 1
        }
    }
    return timer + bridge_length - 1
}

print(solution(5, 5, [2,2,2,2,1,1,1,1,1]))

/*
 가설: 뒤에서부터 건너도 결과는 같다라는 가설. 가설이 맞다면 O(n) -> O(1) pop.
*/
