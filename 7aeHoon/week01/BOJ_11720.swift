// 숫자의 개수
let N = Int(readLine()!)!
// 공백없이 주어지는 N개의 숫자
let str = readLine()!
// 숫자 N개의 합
let sum = str.map { Int(String($0))! }.reduce(0, +)

print(sum)
