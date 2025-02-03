class Solution(object):
    def merge(self, nums1, m, nums2, n):
        """
        :type nums1: List[int]
        :type m: int
        :type nums2: List[int]
        :type n: int
        :rtype: None Do not return anything, modify nums1 in-place instead.
        """
        
        j=0
        l1=len(nums1)
        l2=len(nums2)
        s=l1-l2
        for i,v in enumerate(nums1[s:]):
            if v==0:
                nums1[i+s]=nums2[j]
                j=j+1
        return nums1.sort()        

        

