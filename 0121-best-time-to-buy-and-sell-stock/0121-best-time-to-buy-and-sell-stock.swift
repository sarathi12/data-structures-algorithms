class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var profit: Int = 0
        var buyIdx: Int = 0
        var sellIdx: Int = buyIdx + 1
        while sellIdx < prices.count {
            let diff: Int = prices[sellIdx] -  prices[buyIdx]
            if(diff > 0) {
                if diff > profit {
                    profit = diff
                }
            } else {
                buyIdx = sellIdx
            }
            sellIdx += 1
        }
        return profit
    }
}