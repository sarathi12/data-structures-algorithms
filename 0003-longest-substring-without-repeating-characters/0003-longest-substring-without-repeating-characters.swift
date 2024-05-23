class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let s = Array(s)
        var left: Int = 0
        var longest: Int = 0
        var countS: [Character: Int] = [:]
        for right in 0..<s.count {
            let char = s[right]
            if let idx = countS[char], idx >= left {
                left = idx + 1
            }
            countS[char] = right
            if (right - left) + 1 > longest {
                longest = (right - left) + 1
            }
        }
        return longest
    }
}