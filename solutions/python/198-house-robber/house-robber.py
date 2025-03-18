class Solution:
    def rob(self, nums: List[int]) -> int:
        prev1=0
        prev2=0
        for i in nums:
            best = max(i+prev2,prev1)
            prev2 = prev1
            prev1= best

        return prev1    