import Foundation

// 1부터 N의 정수를 가지는 수열
let N = Int(readLine()!)!
// 스택 배열
var stack = [Int]()
// 수열을 만들기 위한 연산 출력 배열
var result = [String]()
// 마지막으로 처리된 번호
var lastNum = 1

for _ in 0..<N {
    let inputNum = Int(readLine()!)!
    
    while lastNum <= inputNum {
        // 스택에 push
        stack.append(lastNum)
        result.append("+")
        // 마지막 처리번호 +1 증가
        lastNum += 1
    }
    
    // 스택의 탑이 존재하고, 입력된 정수와 같을 경우
    if let top = stack.last, top == inputNum {
        // 스택에서 pop
        stack.removeLast()
        result.append("-")
    } else {
        print("NO")
        exit(0)
    }
}

// 수열을 만들기 위한 연산 출력
print(result.joined(separator: "\n"))
