class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var ans: [Int] = Array(repeating: 1, count: nums.count)
        var prefix: Int = 1
        for (index,num) in nums.enumerated() {
            ans[index] *= prefix
            prefix *= num
        }
        var postfix: Int = 1
        // reversing the loop
        for (idx,num) in nums.enumerated().reversed() {
            ans[idx] *= postfix
            postfix *= num
        }
        
        return ans
    }
}