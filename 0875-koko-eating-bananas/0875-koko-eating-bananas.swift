class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var result: Int = piles.max()!
        var left: Int = 1
        var right: Int = piles.max()!
        while left <= right {
            let mid = (left + right) / 2
            var totalTime: Int = 0
            for pile in piles {
                totalTime += Int(ceil(Double(pile) / Double(mid)))
            }
            if totalTime <= h {
                if mid < result {
                    result = mid
                }
                right = mid - 1
            }  else {
                left = mid + 1
            }
        }
        return result
    }
}