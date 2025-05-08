import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
// 표의 크기 N
let N: Int = input[0]
// 합을 구해야 하는 횟수 M
let M: Int = input[1]

// 2차원 배열 선언
var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: N+1), count: N+1)

// 2차원 배열 입력받기
for i in 1...N {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    for j in 1...N {
        arr[i][j] = input[j-1]
    }
}

// 구간 합 2차원 배열 선언
var pSum: [[Int]] = Array(repeating: Array(repeating: 0, count: N+1), count: N+1)

// 구간 합 배열 구하기
for i in 1...N {
    for j in 1...N {
        pSum[i][j] = pSum[i][j-1] + arr[i][j]
    }
}

// 좌표 값 입력받기
for _ in 0..<M {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    // 좌표(x1, y1)
    let x1 = input[0], y1 = input[1]
    // 좌표(x2, y2)
    let x2 = input[2], y2 = input[3]
    // 두 좌표 사이의 합
    var result = 0
    
    for i in x1...x2 {
        result += pSum[i][y2] - pSum[i][y1-1]
    }
    
    print(result)
}
