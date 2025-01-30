class Solution(object):
    def plusOne(self, digits):
        """
        :type digits: List[int]
        :rtype: List[int]
        """
        number=''
        for i in digits:
            number= number+str(i)
        
        integer = int(number)+1
        str_arr = str(integer)
        c=0
        nums=[]
        
        while c < len(str_arr):
            digit = str_arr[c]
            nums.append(int(digit))
            c=c+1
        
        return nums 