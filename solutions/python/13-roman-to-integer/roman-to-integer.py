class Solution:
    def romanToInt(self, s: str) -> int:
       roman_numbers={'I':1,'V':5,'X':10,'L':50,'C':100,'D':500,'M':1000}
       cur_val=0
       prev_val=0
       total=0
       for char in reversed(s):
            cur_val = roman_numbers[char]
            if cur_val < prev_val:
                total = total - cur_val
            else:
                total = total + cur_val
            prev_val=cur_val
       return total             



