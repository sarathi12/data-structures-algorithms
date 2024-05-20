class Solution {
    func maxSlidingWindow(_ nums: [Int], _ k: Int) -> [Int] {
        guard nums.count >= k else { return [] }
        var output: [Int] = []
        var left: Int = 0
        var right: Int = 0
        var queueArr: [Int] = []
        while right < nums.count {
            while !queueArr.isEmpty && nums[right] > nums[queueArr.last!] {
                queueArr.removeLast()
            }
            queueArr.append(right)
            if let first = queueArr.first, left > first {
                queueArr.removeFirst()
            }
            if (right + 1) >= k {
                if let first = queueArr.first, nums.count > first {
                    output.append(nums[first])
                    left += 1
                }
            }
            right += 1
        }
        return output
    }
}