import Foundation

// 누적 합 배열에서 원소의 값이 같은 2개를 뽑은 후 서로를 뺄 경우 값이 0이 된다.
// 여기서 무조건 큰 인덱스에서 작은 인덱스를 빼야하므로 배치 순서는 고려하지 않는다.
// 따라서 값이 0인 경우는 나누어 떨어지므로 카운트를 증가한다.

// 입력
let NM = readLine()!.split(separator: " ").map { Int($0)! }
// 수 N개
let N = NM[0]
// 각 수를 M으로 나누기
let M = NM[1]
// N개의 정수 배열
var arr = readLine()!.split(separator: " ").map { Int($0)! }
// 구간 합 계산을 1부터 하기 위해 인덱스 0 맨앞 추가
arr.insert(0, at: 0)
// 구간 합 prefix Sum
var pSum: [Int] = Array(repeating: 0, count: N+1)
// 구간 합 구하기
for i in 1...N { pSum[i] = pSum[i-1] + arr[i] }
// 구간 합을 M으로 나눈 배열
var rArr: [Int] = Array(repeating: 0, count: M)
// pSum의 각 원소를 M으로 나눈 값을 rArr에 추가
pSum.forEach { rArr[$0 % M] += 1 }
// 최종 결과
var result = 0
for i in 0..<rArr.count {
    if rArr[i] <= 1 { continue }
    result += (rArr[i] * (rArr[i] - 1) / 2)
}

print(result)
