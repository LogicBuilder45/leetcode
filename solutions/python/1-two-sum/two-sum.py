class Solution:
    def twoSum(self, nums, target):
        l=len(nums)
        print('length',l)
        for i in range(l):
            #print('i',i)
            for j in range(l):
                #print('j',j)
                if nums[i]+nums[j]==target and i!=j:
                    #print('sum',nums[i]+nums[j])
                    #print(i,j)
                    return[i,j] 