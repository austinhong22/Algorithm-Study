import Foundation

// 수의 개수
let cnt = Int(readLine()!)!

// 배열
var arr: [Int] = []

for _ in 0..<cnt {
    let num = Int(readLine()!)!
    arr.append(num)
}

// 오름차순 정렬
arr.sort()

// 결과 출력
for i in arr {
    print(i)
}
