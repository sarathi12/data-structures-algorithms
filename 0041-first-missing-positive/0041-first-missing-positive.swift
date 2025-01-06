class Solution {
    func firstMissingPositive(_ nums: [Int]) -> Int {
        return firstMissingPositiveCyclicSort(nums)
    }

    func firstMissingPositiveCyclicSort(_ nums: [Int]) -> Int {
        var n: Int = nums.count
        var i: Int = 0
        var nums = nums
        while i < n {
            var index = nums[i] - 1
            if nums[i] > 0, nums[i] <= n, nums[i] != nums[index] {
                swap(&nums, i, index)
            } else {
                i += 1
            }
        }
        i = 0
        while i < n {
            if nums[i] != i + 1 {
                return i + 1
            }
            i += 1
        }
        return n + 1
    }

    func swap(_ nums: inout [Int], _ i: Int, _ j: Int ) {
        var temp = nums[j]
        nums[j] = nums[i]
        nums[i] = temp
    }
}