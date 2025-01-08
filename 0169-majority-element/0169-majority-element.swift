class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var result: Int = 0
        var count: Int = 0
        for num in nums {
            if count == 0 {
                result = num
            }
            count += (num == result) ? 1 : -1
        }
        return result
    }
}