class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var totalCount: Int = 0
        /*
        for i in 0..<nums.count {
            
            var newVal = nums[i]
            if newVal == k {
                totalCount += 1
            }
            var nextVal = i+1
            for j in nextVal..<nums.count {
                newVal += nums[j]
                if newVal == k {
                   totalCount += 1
                }
            }
        }
        */
        var sum: Int = 0
        var prefixSum: [Int: Int] = [0:1]
        for num in nums {
            sum += num
            var diff = sum - k
            totalCount += prefixSum[diff] ?? 0
            prefixSum[sum] = 1 + (prefixSum[sum] ?? 0)
        }

        return totalCount
    }
}