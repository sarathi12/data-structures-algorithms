class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var result: [[Int]] = []
        var sortedNums: [Int] = nums.sorted()
        
        for firstIdx in 0..<sortedNums.count-2 {
            if firstIdx > 0 && sortedNums[firstIdx] == sortedNums[firstIdx - 1] {
                continue
            }
            var secondIdx: Int = firstIdx + 1
            var thirdIdx: Int = sortedNums.count - 1
            while secondIdx < thirdIdx {
                let sum = sortedNums[firstIdx] + sortedNums[secondIdx] + sortedNums[thirdIdx]
                if sum == 0 {
                    result.append([sortedNums[firstIdx], sortedNums[secondIdx], sortedNums[thirdIdx]])
                    thirdIdx -= 1
                    secondIdx += 1
                    while secondIdx < thirdIdx && sortedNums[thirdIdx] == sortedNums[thirdIdx + 1] {
                        thirdIdx -= 1
                    } 
                    while secondIdx < thirdIdx && sortedNums[secondIdx] == sortedNums[secondIdx - 1] {
                            secondIdx += 1
                        }
                } else if sum > 0 {
                    thirdIdx -= 1
                } else {
                        secondIdx += 1
                    }
                }
            }
        return result
    }
}