def twoSum(nums, target):
    hashmap = {}
    for i, num in enumerate(nums):
        complement = target - num
        if complement in hashmap:
            return [hashmap[complement], i]
        hashmap[num] = i

# Sample input
nums = [2, 7, 11, 15]
target = 9

# Call the function and print result
result = twoSum(nums, target)
print("Indices:", result)
