import Foundation

// 수의 개수 N
let N = Int(readLine()!)!
// N개의 수를 담고있는 배열
let arr = readLine()!.split(separator: " ").map { Int($0)! }
// 소수의 수
var result = 0

// 배열 순회
for i in arr {
    // 1은 소수가 아니므로 제외
    if i == 1 { continue }
    // 소수 판단 플래그
    var isPrime = false
    
    for j in 2 ..< i {
        // 만약 나누어 떨어질 경우, 즉 약수일 경우
        if i % j == 0 {
            // 소수로 체크
            isPrime = true
            break
        }
    }
    // 소수가 아닐 경우
    if !isPrime { result += 1 }
    
}

print(result)
