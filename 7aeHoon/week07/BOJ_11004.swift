import Foundation

let fIO = FileIO()

let N = fIO.readInt()
let K = fIO.readInt()

var arr = [Int]()

for _ in 0..<N {
    let num = fIO.readInt()
    arr.append(num)
}

arr.sort()

print(arr[K - 1])
