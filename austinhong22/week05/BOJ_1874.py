import sys

input = sys.stdin.readline

n = int(input().strip())
targets = [int(input().strip()) for _ in range(n)]

stack = []
ops = []            
next_num = 1        

for x in targets:
    while next_num <= x:
        stack.append(next_num)
        ops.append('+')
        next_num += 1

    if stack and stack[-1] == x:
        stack.pop()
        ops.append('-')
    else:
        print("NO")
        sys.exit(0)

print("\n".join(ops))
