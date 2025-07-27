import Foundation

var sum = 0

let input = readLine()!.split(separator: "-").map { $0.split(separator: "+").compactMap { Int($0) }}

sum += input[0].reduce(0, +)
sum -= input.dropFirst().flatMap { $0 }.reduce(0, +)

print(sum)
