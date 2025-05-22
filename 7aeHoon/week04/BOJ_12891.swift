import Foundation

func add(_ ch: Character) {
    if ch == "A" { save[0] += 1 }
    if ch == "C" { save[1] += 1 }
    if ch == "G" { save[2] += 1 }
    if ch == "T" { save[3] += 1 }
}

func sub(_ ch: Character) {
    if ch == "A" { save[0] -= 1 }
    if ch == "C" { save[1] -= 1 }
    if ch == "G" { save[2] -= 1 }
    if ch == "T" { save[3] -= 1 }
}

let input = readLine()!.split(separator: " ").map { Int($0)! }
// DNA 문자열 길이
let S = input[0]
// 비밀번호로 사용할 부분 문자열의 길이
let P = input[1]
// DNA 문자열
let dnaStr: [Character] = Array(readLine()!)
// {A, C, G, T}의 최소 개수를 가지는 배열
var valiadtion: [Int] = readLine()!.split(separator: " ").map { Int($0)! }
// 현재 저장중인 DNA 정보
var save: [Int] = Array(repeating: 0, count: 4)
// 결과
var result = 0

for i in 0..<P {
    add(dnaStr[i])
}

if save.elementsEqual(valiadtion) { result += 1 }

for i in P..<S {
    add(dnaStr[i])
    sub(dnaStr[i - P])
    
    if save.elementsEqual(valiadtion) { result += 1 }
}

print(result)
