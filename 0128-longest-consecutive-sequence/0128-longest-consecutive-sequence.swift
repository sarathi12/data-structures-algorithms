class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else {
            return 0
        }
        var maxLength: Int = 1
        let numsSet: Set<Int> = Set(nums)
        
        for num in numsSet {
            let previousVal = num - 1
            if !numsSet.contains(previousVal) {
                var nextVal = num + 1
                var longest: Int = 1
                while numsSet.contains(nextVal) {
                    longest += 1
                    if longest > maxLength {
                        maxLength = longest
                    }
                    nextVal += 1
                }
            }
        }
        
        return maxLength
    }
}