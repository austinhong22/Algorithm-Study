import Foundation

// 수열의 크기
let N = Int(readLine()!)!
// 크기가 N인 수열
var arr = readLine()!.split(separator: " ").compactMap { Int($0) }
// 임시 스택
var temp = [(Int, Int)]()
// 결과
var result = Array(repeating: -1, count: N)

for pair in arr.enumerated() {
    // 임시 스택이 비어있지 않고, top의 값이 새로 들어올 값보다 작을 경우
    while let top = temp.last, top.1 < pair.element {
        // 새로운 값을 오큰수로 저장
        result[top.0] = pair.element
        // 임시 스택의 top을 pop
        temp.removeLast()
    }
    
    // 임시 스택에 현재 값 추가
    temp.append(pair)
}

// 결과 출력
print(result.map { String($0) }.joined(separator: " "))
