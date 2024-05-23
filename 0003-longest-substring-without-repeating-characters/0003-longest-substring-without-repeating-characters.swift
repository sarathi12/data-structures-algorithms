class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        let s = Array(s)
        var left: Int = 0
        var longest: Int = 0
        var countS: [Character: Int] = [:]
        for right in 0..<s.count {
            let char = s[right]
            while countS[char] != nil {
                let leftChar = s[left]
                
                countS.removeValue(forKey: leftChar)
                left += 1
            }
            countS[char, default: 0] += 1
            if (right - left) + 1 > longest {
                longest = (right - left) + 1
            }
        }
        return longest
    }
}