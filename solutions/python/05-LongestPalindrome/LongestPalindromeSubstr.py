#Given a string s, return the longest palindromic substring in s.
#Example:
#Input: s = "babad"
#Output: "bab"
#Explanation: "aba" is also a valid answer.

class Solution:
    def longestPalindrome(self, s: str) -> str:
        if not s:
            return ""

        longest = s[0] 

        for i in range(len(s)):
            for j in range(i, len(s)):

                substring = s[i:j+1]

                if substring == substring[::-1]:
                    if len(substring) > len(longest):
                        longest = substring

        return longest

