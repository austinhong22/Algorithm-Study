n, m = map(int,input().split())
arr = []

for _ in range(n):
    row = list(map(int,input().split()))
    arr.append(row)

pre_sum = [[0]*(n+1) for _ in range(n+1)]

for i in range(1,n+1):
    for j in range(1, n+1):
        pre_sum[i][j] = pre_sum[i][j-1]+arr[i-1][j-1]
        

for i in range(m):
    x1,y1,x2,y2 = map(int,input().split())
    total = 0
    for row in range(x1, x2+1):
        total += pre_sum[row][y2] - pre_sum[row][y1 - 1]
    print(total)



