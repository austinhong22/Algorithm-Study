import Foundation

func DFS(_ currentNode: Int, _ totalCost: Int) {
    visited[currentNode] = true
    if answer < totalCost {
        answer = totalCost
        tempNode = currentNode
    }
    for nextNode in adjacencyList[currentNode] where !visited[nextNode.0] {
        DFS(nextNode.0, nextNode.1 + totalCost)
    }
}

func reset() {
    visited = [Bool](repeating: false, count: V + 1)
    answer = 0
}

let V = Int(readLine()!)! // 정점의 개수
var adjacencyList = [[(Int, Int)]](repeating: [(Int, Int)](), count: V + 1) // 인접 리스트
var visited = [Bool](repeating: false, count: V + 1)
var tempNode = 0 // 트리의 지름을 구성하는 노드 중 하나
var answer = 0

for _ in 0..<V {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let fromNode = input[0]
    var index = 1
    while input[index] != -1 {
        let toNode = input[index]
        let cost = input[index + 1]
        adjacencyList[fromNode].append((toNode, cost))
        index += 2
    }
}

DFS(1, 0)
reset()
DFS(tempNode, 0)
print(answer)
