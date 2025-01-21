class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var nums = nums
        return mergeSort(&nums, 0 , nums.count - 1)
    }

    func mergeSort(_ nums: inout [Int], _ left: Int, _ right: Int) -> [Int] {
        if left == right {
            return [nums[left]]
        }
        let mid = (left + right) / 2
        let leftList = mergeSort(&nums, left, mid)
        let rightList = mergeSort(&nums, mid + 1, right)
        return merge(leftList, rightList)

    }

    func merge(_ leftArray: [Int], _ rightArray: [Int]) -> [Int] {
        var i = 0
        var j = 0
        var mergeArr: [Int] = []
        while i < leftArray.count && j < rightArray.count {
            if leftArray[i] <= rightArray[j] {
                mergeArr.append(leftArray[i])
                i += 1
            } else {
                mergeArr.append(rightArray[j])
                j += 1
            }
        }
        while i < leftArray.count {
            mergeArr.append(leftArray[i])
                i += 1
        }
        while j < rightArray.count {
            mergeArr.append(rightArray[j])
            j += 1
        }
        return mergeArr
    }

    
}