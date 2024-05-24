class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var outputArr: [Int] = []
        var idx1: Int = 0
        var idx2: Int = 0
        while idx1 < nums1.count || idx2 < nums2.count {
            if idx1 >= nums1.count {
                outputArr.append(nums2[idx2])
                idx2 += 1
            } else if idx2 >= nums2.count {
                outputArr.append(nums1[idx1])
                idx1 += 1
            } else {
                if nums1[idx1] < nums2[idx2] {
                    outputArr.append(nums1[idx1])
                    idx1 += 1
                } else {
                    outputArr.append(nums2[idx2])
                    idx2 += 1
                }
            }
        }
        let medianIdx = outputArr.count / 2
        return (outputArr.count) % 2  == 0 ? Double(outputArr[medianIdx - 1] + outputArr[medianIdx]) / 2.0 : Double(outputArr[medianIdx])
        
    }
}