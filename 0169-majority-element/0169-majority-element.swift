class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        guard nums.count > 0 else { return 0 }
        var targetCount: Int = nums.count / 2
        var result: Int = 0
        var majorityElementCount: [Int: Int] = [:]
        for num in nums {
            majorityElementCount[num, default: 0] += 1
print(majorityElementCount)
            if majorityElementCount.count > 2 {
                var newCount: [Int: Int] = [:]
                for (num, count) in majorityElementCount {
                    if (count - 1) >= 0 {
                        newCount[num] = count - 1
                    }
                }
                majorityElementCount = newCount
                print(majorityElementCount)
            }

        }
        print(targetCount)
        print(majorityElementCount)
        for (n, _) in majorityElementCount {
            var count: Int = 0
            for num in nums {
                if n == num {
                    count += 1
                }
            }
            print(count)
            if count > targetCount {
                result = n
            }
        }

        return result

    }
}