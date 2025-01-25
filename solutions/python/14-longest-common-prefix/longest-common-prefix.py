class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        result=strs[0]
        for x in strs[1:]:
            while not x.startswith(result):
                result = result[:-1]
        return result