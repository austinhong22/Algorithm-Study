import Foundation

// 시험 본 과목의 개수 N
let N = Int(readLine()!)!
// 각 성적을 공백을 기준으로 분리하고 오름차순으로 정렬
let input = readLine()!.components(separatedBy: " ").map { Int($0)! }.sorted()
// 시험 점수의 최댓값
let max = input.last!
// 모든 점수를 (과목점수 / M * 100)으로 고친 후 누적 합 계산
// (누적 합 / 과목의 수)를 통해 새로운 평균 계산
let result = input.map { Double($0) / Double(max) * 100 }.reduce(0.0, +) / Double(N)
// 결과 출력
print(result)
