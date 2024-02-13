class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var output: [[Character: Int]: [String]] = [:]
        for s in strs {
            var countS: [Character: Int] = [:]
            for char in s {
                countS[char, default: 0] += 1
            }
            output[countS, default: []].append(s)
        }
        return Array(output.values)
    }
}