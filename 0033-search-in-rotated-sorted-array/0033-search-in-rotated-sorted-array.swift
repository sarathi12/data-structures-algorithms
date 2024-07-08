class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var low: Int = 0
        var high: Int = nums.count - 1
        while low <= high {
            
            if nums[high] == target {
                return high
            } 
            if nums[low] == target {
               return low
            }
            var mid: Int = (low + high) / 2
            if nums[mid] == target {
                return mid
            }
            // Left sorted portion
            if nums[mid] >= nums[low] {
                if target < nums[low] || target > nums[mid] {
                    low = mid + 1
                } else {
                    high = mid - 1
                }
            } else {
                if target > nums[high] || target < nums[mid] {
                    high = mid - 1
                } else {
                    low = mid + 1
                }
            }
        }

        return -1
    }
}