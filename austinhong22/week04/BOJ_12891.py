s, p = map(int,input().split())
arr = list(map(str,input()))
a,c,g,t = map(int,input().split())

a_cnt =0
c_cnt =0
g_cnt =0
t_cnt =0

for i in range(p):
    if arr[i] == 'A':
        a_cnt += 1
    elif arr[i] == 'C':
        c_cnt += 1
    elif arr[i] == 'G':
        g_cnt += 1
    elif arr[i] == 'T':
        t_cnt += 1

def is_valid():
   return a_cnt >= a and c_cnt >= c and g_cnt >= g and t_cnt >= t

cnt = 0

if is_valid():
	cnt +=1

for i in range(p, s):
   
    out = arr[i - p]
    if out == 'A':
        a_cnt -= 1
    elif out == 'C':
        c_cnt -= 1
    elif out == 'G':
        g_cnt -= 1
    elif out == 'T':
        t_cnt -= 1

    
    new = arr[i]
    if new == 'A':
        a_cnt += 1
    elif new == 'C':
        c_cnt += 1
    elif new == 'G':
        g_cnt += 1
    elif new == 'T':
        t_cnt += 1

    if is_valid():
        cnt += 1

print(cnt)