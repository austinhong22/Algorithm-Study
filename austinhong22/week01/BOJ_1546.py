n = int(input())  
nums = list(map(int, input().split()))

max = max(nums)

new_nums = [x/max * 100 for x in nums]  #리스트 컴프리헨션 

sum = sum(new_nums) / len(new_nums)
print(sum) 