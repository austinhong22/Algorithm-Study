n, m = map(int,input().split())

nums = list(map(int,input().split()))
pre_sum = [0]
pre = 0

for i in nums:
    pre += i
    pre_sum.append(pre)

for i in range(m):
    c, d = map(int,input().split())
    print(pre_sum[d]-pre_sum[c-1])
