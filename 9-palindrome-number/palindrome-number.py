class Solution:
    def isPalindrome(self, x: int) -> bool:
        if str(x)[::-1] == str(x):
            return(bool(1))
        else: return(bool(0))   