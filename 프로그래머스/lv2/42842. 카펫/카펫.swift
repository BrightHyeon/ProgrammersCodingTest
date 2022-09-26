import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
  
  let tot = brown + yellow //전체 크기.
  var yaksu: [Int] = []
  var couple: [[Int]] = []
  //약수 구하기
  for i in 3..<tot { //마지막 수 포함안하기.
    if tot % i == 0 {
      yaksu.append(i)
    }
  }
  if tot % 2 == 0 { //짝수면 마지막 숫자 제거.
    yaksu.removeLast()
  }
  if yaksu.count % 2 != 0 {
    yaksu.insert(yaksu[(yaksu.count-1)/2], at: (yaksu.count-1)/2)
  }
  for i in 0..<yaksu.count/2 {
    var ssang: [Int] = []
    ssang.append(yaksu[i])
    ssang.append(yaksu[yaksu.count-1-i])
    couple.append(ssang)
  }
  var result: [Int] = []
  for i in couple {
    if brown == 2*i[0] + 2*i[1] - 4 {
      result = [i[0], i[1]]
    }
  }
  
  return result.sorted(by: { $0 > $1 })
}