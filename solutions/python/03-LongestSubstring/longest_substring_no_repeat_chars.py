#Given a string 's', find the length of the longest substring without duplicate characters.
#Example:
#Input: s = "abcabcbb"
#Output: 3
#Explanation: The answer is "abc", with the length of 3. Note that "bca" and "cab" are also correct answers.

class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        longest = 0  

        for i in range(len(s)):
            current = "" 

            for j in range(i, len(s)):
                if s[j] in current:  
                    break
                current += s[j]

            longest = max(longest, len(current))

        return longest