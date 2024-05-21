class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var output: [Int] = []
        var countArr: [Int: Int] = [:]
        var freqCountArr : [[Int]] = Array(repeating: [], count: nums.count + 1)
        for num in nums {
            countArr[num, default: 0] += 1
        }
        for (key, value) in countArr {
            freqCountArr[value].append(key)
        }
        for freqArr in freqCountArr.reversed() {
            for freqElement in freqArr {
                output.append(freqElement)
                if output.count == k {
                    return output
                }
            }
            
        }
        return output
    }
}