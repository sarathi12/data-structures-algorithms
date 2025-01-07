class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var targetCount: Int = nums.count / 3
        var newArray: [Int] = nums.sorted()
        var countArray: [Int: Int] = [:]
        var result: [Int] = []
        var i = 0
        while i < newArray.count {
            var j = i + 1
            var count = 1
            while j < newArray.count {
                if newArray[i] == newArray[j] {
                   count += 1
                   j += 1
                } else {
                    break
                }   
            }
            if count > targetCount {
                result.append(newArray[i])
            }
            i = j
        }
        return result
    }
}