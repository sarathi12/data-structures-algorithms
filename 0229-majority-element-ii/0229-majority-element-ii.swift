class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var targetCount: Int = nums.count / 3
        var newArray: [Int] = []
        var countArray: [Int: Int] = [:]
        for num in nums {
            countArray[num, default: 0] += 1
        } 
        for (num, count) in countArray {
            if count > targetCount {
                newArray.append(num)
            }
        }
        return newArray
    }
}