class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var totalCount: Int = 0
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

        return totalCount
    }
}