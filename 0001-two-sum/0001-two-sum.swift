class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var sumDict: [Int: Int] = [:]
        for (i, num) in nums.enumerated() {
            if let firstIdx = sumDict[num] {
                return [firstIdx, i]
            }
            sumDict[target - num] = i
        }
        return []
    }
}