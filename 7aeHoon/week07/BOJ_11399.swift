import Foundation

let N = Int(readLine()!)!

// 대기 시간
var times = readLine()!
    .split(separator: " ")
    .compactMap { Int($0) }
    .sorted()

// 총 대기 시간
var totalWatingTime = 0
// 누적 합
var pSum = 0

for time in times {
    // 이전까지 걸린 대기 시간
    pSum += time
    // 이전까지 걸린 대기 시간을 총 대기 시간에 누적
    totalWatingTime += pSum
}

// 총 대기 시간 출력
print(totalWatingTime)
