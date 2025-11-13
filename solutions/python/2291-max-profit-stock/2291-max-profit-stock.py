from typing import List


class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        if not prices:
            return 0
        min_price = prices[0]
        best = 0
        for p in prices[1:]:
            if p < min_price:
                min_price = p
            profit = p - min_price
            if profit > best:
                best = profit
        return best
