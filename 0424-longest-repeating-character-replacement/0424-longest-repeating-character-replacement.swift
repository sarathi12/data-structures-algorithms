class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var longest: Int = 0
        var countS: [Character: Int] = [:]
        var left : Int = 0
        let s = Array(s)
        for right in 0..<s.count {
            let char = s[right]
            countS[char, default: 0] += 1
            var diff = (right - left) + 1
            let maxValue = countS.values.max() ?? 0
            print(maxValue)
            if (diff - maxValue) > k {
                countS[s[left]]! -= 1
                left += 1
                diff -= 1
            }
            
            if diff > longest {
                longest = diff
            }
        }
        
        return longest
    }
}