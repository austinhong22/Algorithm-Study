n, m = map(int,input().split())

lis = list(map(int,input().split()))


prefix = 0

freq = [0]*m
freq[0] = 1 # 시작~ j까지 m으로 나눠질때 대비

cnt = 0

for a in lis:
    prefix = (prefix+a) % m
    cnt += freq[prefix]
    freq[prefix] += 1

print(cnt)
