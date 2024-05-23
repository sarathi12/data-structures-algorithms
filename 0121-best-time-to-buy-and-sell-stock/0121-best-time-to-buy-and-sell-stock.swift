class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var highestProfit: Int = 0
        var left: Int = 0
        for right in 0..<prices.count {
            if right > left {
                let leftPrice: Int = prices[left]
                let rightPrice: Int = prices[right]
                if rightPrice < leftPrice {
                    left = right
                } else {
                    let diff = rightPrice - leftPrice
                    if diff > highestProfit {
                        highestProfit = diff
                    }
                }
            }
        }
        
        return highestProfit
    }
}