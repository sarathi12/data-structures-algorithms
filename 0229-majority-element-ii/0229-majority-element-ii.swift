class Solution {
    func majorityElement(_ nums: [Int]) -> [Int] {
        var targetCount: Int = nums.count / 3
        var countArray: [Int: Int] = [:]
        var result: [Int] = []
        for num in nums {
            countArray[num, default: 0] += 1
            if countArray.count > 2 {
                var newCount: [Int: Int] = [:]
                for (num, count) in countArray {
                    if (count - 1) > 0 {
                        newCount[num] = count - 1
                    }
                }
                countArray = newCount
            }
        }
        
        for (n, c) in countArray {
            var count: Int = 0
            for num in nums {
                if num == n {
                    count += 1
                }
            }
            if count > targetCount {
                result.append(n)
            } 
        }
        return result
    }
}