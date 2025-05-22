n = int(input())

arr = list(map(int,input().split()))

arr.sort() 
cnt = 0


for i in range(n):
	target = arr[i]
	left = 0
	right = n-1

	while left < right:

		# 자기 자신 제외
		if left == i:
			left +=1
			continue
		if right == i:
			right -=1
			continue

		total = arr[left]+arr[right]

		if total == target:
			cnt +=1
			break
		elif total < target:
			left +=1
		else:
			right -=1
print(cnt)