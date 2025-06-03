import Foundation

struct Queue<T> {

    private var enqueue: [T] = []
    private var dequeue: [T] = []
    
    var size: Int {
        return enqueue.count + dequeue.count
    }
    
    var isEmpty: Bool {
        return enqueue.isEmpty && dequeue.isEmpty
    }
    
    var first: T? {
        return dequeue.isEmpty ? enqueue.first : dequeue.last
    }
    
    @discardableResult
    mutating func pop() -> T? {
        if dequeue.isEmpty {
            dequeue = enqueue.reversed()
            enqueue.removeAll()
        }
        return dequeue.popLast()
    }
    
    mutating func push(_ element: T) {
        enqueue.append(element)
    }
    
    mutating func removeAll() {
        enqueue.removeAll()
        dequeue.removeAll()
    }
    
}

let N = Int(readLine()!)!

// 큐
var queue = Queue<Int>()

for i in 1...N {
    queue.push(i)
}

// 큐의 사이즈가 1이 될 때까지 반복
while queue.size != 1 {
    // 제일 위에 있는 카드는 버리기
    queue.pop()
    // 그 다음으로 위에 있는 카드를 뽑고 마지막에 추가하기
    queue.push(queue.pop()!)
}

// 큐에 마지막까지 남아있는 카드 출력
print(queue.first!)
