class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
        var countS: [Character: Int] = [:]
        var countT: [Character: Int] = [:]
        let sStr = Array(s)
        let tStr = Array(t)
        for i in 0..<s.count {
            countS[sStr[i], default: 0] += 1
            countT[tStr[i], default: 0] += 1
        }
        return countS == countT
    }
}