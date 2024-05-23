class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        guard s2.count >= s1.count else { return false}
        if s1 == s2 {
            return true
        }
        
        let s1 = Array(s1)
        let s2 = Array(s2)
        var countS1: [Character: Int] = [:]
        var countS2: [Character: Int] = [:]
        var left: Int = 0
        for char in s1 {
            countS1[char, default: 0] += 1
        }
        var keep: Int = countS1.count
        var need: Int = 0
        for right in 0..<s2.count {
            let char = s2[right]
            countS2[char, default: 0] += 1
            if let countS1 = countS1[char], let countS2 = countS2[char], countS1 == countS2 {
                need += 1
            }
            
            while need == keep {
                let diff = (right - left) + 1
                if diff == s1.count {
                    return true
                }
                let leftChar = s2[left]
                left += 1
                countS2[leftChar, default: 0] -= 1 
                if let countS1 = countS1[leftChar], let countS2 = countS2[leftChar], countS1 > countS2 {
                    need -= 1
                }
            }
        }
        
        return false
    }
}