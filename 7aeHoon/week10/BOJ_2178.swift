import Foundation

typealias Point = (y: Int, x: Int)

let NM = readLine()!.split(separator: " ").compactMap { Int($0) }
let N = NM[0], M = NM[1], MAX = 105
var maze = [[Int]](repeating: [Int](repeating: 0, count: MAX), count: MAX)
var visited = [[Int]](repeating: [Int](repeating: 0, count: MAX), count: MAX)
let directions: [Point] = [(-1, 0), (0, 1), (1, 0), (0, -1)]
var queue = Queue<Point>()

func BFS() {
    while let (y, x) = queue.pop() {
        for (dy, dx) in directions {
            let ny = y + dy
            let nx = x + dx
            if ny < 0 || nx < 0 || ny >= N || nx >= M || maze[ny][nx] == 0 { continue }
            if visited[ny][nx] != 0 { continue }
            queue.push((ny, nx))
            visited[ny][nx] = visited[y][x] + 1
        }
    }
}

func solution() {
    for i in 0..<N {
        let row = readLine()!.map { Int(String($0))! }
        for j in 0..<M {
            maze[i][j] = row[j]
        }
    }
    queue.push((0, 0))
    visited[0][0] = 1
    BFS()
    print(visited[N - 1][M - 1])
}

solution()
