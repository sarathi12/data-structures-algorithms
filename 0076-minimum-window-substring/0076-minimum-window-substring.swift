class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        guard t.count <= s.count else { return "" }
        if t == s {
            return s
        }
        let s = Array(s)
        let t = Array(t)
        var countS: [Character: Int] = [:]
        var countT: [Character: Int] = [:]
        for char in t {
            countT[char, default: 0] += 1
        }
        let keep: Int = countT.count
        var need: Int = 0
        var minRange = -1
        var length: Int = Int.max
        var left: Int = 0
        for right in 0..<s.count {
            let char = s[right]
            countS[char, default: 0] += 1
             if let tCountVal = countT[char], let sCountVal = countS[char], tCountVal == sCountVal {
                 need += 1
             }
            
            while keep == need {
                let diff = (right - left) + 1
                if diff < length {
                    length = diff
                    minRange = left
                }
                let leftChar = s[left]
                countS[leftChar, default: 0] -= 1
                if let tCountVal = countT[leftChar], let sCountVal = countS[leftChar], tCountVal > sCountVal {
                    need -= 1
                }
                
                left += 1
            }
        }
        if length < Int.max {
            let endRange = minRange + length
            return String(s[minRange..<endRange])
        }
        return ""
        
    }
}