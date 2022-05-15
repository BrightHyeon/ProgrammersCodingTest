//
//  n제곱 배열 자르기.swift
//  ProgrammersCodingTest
//
//  Created by Hyeonsoo Kim on 2022/05/15.
//

import Foundation

//MARK: First Try
//단순히 O(n2) 접근방식을 사용하여 시간초과 발생.

//MARK: Second Try
//O(n2)은 해결했으나, 여전히 비효율적인 코드. 해당 인덱스의 배열들을 다 만들어주는 방법.

func solution2(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    
    let lefty = Int(left)
    let righty = Int(right)
    var arr: [Int] = []
    var cL: Int { //Left좌표가 위치한 배열
        if lefty % n == 0 && lefty != 0{
            return (lefty / n)-1
        } else {
            return lefty / n
        }
    }
    var cLN: Int { //Left좌표가 위치한 배열에서의 인덱스.
        if lefty % n == 0 && lefty != 0  {
            return n-1
        } else {
            return lefty % n
        }
    }
    var cR: Int { //Right좌표가 위치한 배열
        if righty % n == 0 && righty != 0 {
            return (righty / n)-1
        } else {
            return righty / n
        }
    }
    var cLR: Int { //Right좌표가 위치한 배열에서의 인덱스.
        if righty % n == 0 && righty != 0 {
            return n-1
        } else {
            return righty % n
        }
    }
    if cL == cR {
        arr.append(contentsOf: arrMethod(currentLine: cL, totalLines: n))
    } else if cL != cR {
        for i in cL...cR {
            arr.append(contentsOf: arrMethod(currentLine: i+1, totalLines: n))
        }
    }
    
    return Array(arr[cLN...cLN+(righty-lefty)])
}

func arrMethod(currentLine: Int, totalLines: Int) -> [Int] {
    //현재 라인의 배열만 반환하는 메서드.
    var arr: [Int] = []
    arr.append(contentsOf: Array.init(repeating: currentLine, count: currentLine))
    if currentLine < totalLines {
        for i in currentLine+1...totalLines {
            arr.append(i)
        }
    }
    return arr
}

//MARK: Third Try
//규칙을 찾아서 배열 틀을 만들어줄 필요없이 바로 계산하여 반환값 도출.

import Foundation

func solution3(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    
    var arr: [Int] = []
    
    for i in Int(left)...Int(right) {
        let mok = i/n
        let na = i%n
        if na == n-1 {
            arr.append(n)
        } else if na > mok {
            arr.append(na+1)
        } else if na <= mok {
            arr.append(mok+1)
        }
    }
    
    return arr
}

//MARK: Other people's solution
//map 고차함수를 사용하였고, 크기비교 조건문 대신 바로 max로 값 도출하는 형태.

func otherSolution(_ n: Int, _ left: Int64, _ right: Int64) -> [Int] {
    return (left...right).map { max(Int($0) / n, Int($0) % n) + 1 }
}
