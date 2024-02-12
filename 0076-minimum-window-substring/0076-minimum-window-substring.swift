class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        if(t.count > s.count) {
            return ""
        }
        
        if(t == s) {
            return s
        }
        let arrString = Array(s)
        var counterT = [Character:Int]()
        var windowS = [Character:Int]()
        for char in t {
            counterT[char, default: 0] += 1 
        }
        var need: Int = counterT.count
        var have: Int = 0
        var left = 0
        var minLength = Int.max
        var startIdx = -1
        var endIdx = -1
        for right in 0..<arrString.count {
            let char = arrString[right]
            windowS[char, default: 0] += 1
            if counterT[char] != nil && windowS[char] == counterT[char] {
                have += 1
            }
            while have == need {
                if(minLength > (right - left + 1)) {
                    minLength = right - left + 1
                    startIdx = left
                    endIdx = right
                }
                windowS[arrString[left]]! -= 1
                if counterT[arrString[left]] != nil && windowS[arrString[left]]! < counterT[arrString[left]]! {
                    have -= 1
                }
                left += 1
            }
        }
        if minLength != Int.max {
            return String(arrString[startIdx ..< endIdx+1]) 
        }
        return ""
        
    }
}