class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var result: Int = 0
        var currSum: Int = 0
        var diffSum: [Int: Int] = [0:1]
        for num in nums {
            currSum += num
            var diff = currSum - k
            result += diffSum[diff] ?? 0
            diffSum[currSum] = 1 + (diffSum[currSum] ?? 0)
        }
        return result
    }
}