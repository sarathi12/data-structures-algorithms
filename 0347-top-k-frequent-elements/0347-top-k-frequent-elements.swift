class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var output: [Int] = []
        var countDict: [Int: Int] = [:]
        var freqCount: [[Int]] = Array(repeating: [], count: nums.count + 1)
        for num in nums {
            countDict[num, default: 0] += 1
        }
        for (key, value) in countDict {
            freqCount[value].append(key)
        }
        for countArr in freqCount.reversed() {
            for val in countArr {
                output.append(val)
                if output.count == k {
                    return output
                }
            }
            
        }
        return output
    }
}