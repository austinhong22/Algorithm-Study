n = int(input())
sequence = [int(input()) for _ in range(n)]

stack = []
result = []
current = 1


for target in sequence:
    while current <= target:
        stack.append(current)
        result.append('+')
        current += 1


    if stack[-1] == target:
        stack.pop()
        result.append('-')
    else:
        print('NO')
        exit()

for op in result:
    print(op)