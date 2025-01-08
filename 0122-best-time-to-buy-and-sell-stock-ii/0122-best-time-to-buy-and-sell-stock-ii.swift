class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maxProfit: Int = 0
        var i: Int = 1
        
        while i < prices.count {
            var previous: Int = i - 1
            if prices[i] > prices[previous] {
                maxProfit += prices[i] - prices[previous]
            }
            i += 1
        }
        return maxProfit
    }
}