class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        guard s2.count >= s1.count else { return false}
        var s1 = Array(s1)
        var s2 = Array(s2)
        var countS1: [Character: Int] = [:]
        var countS2: [Character: Int] = [:]
        for char in s1 {
            countS1[char, default: 0] += 1
        }
        var keep: Int = countS1.count
        var need: Int = 0
        var left: Int = 0
        for right in 0..<s2.count {
            let charS2 = s2[right]
            countS2[charS2, default: 0] += 1
            if let countCharS1 = countS1[charS2], let countCharS2 = countS2[charS2], countCharS1 == countCharS2 {
                need += 1
            }
            if need == keep {
                return true
            }
            let distance = (right - left) + 1
            if distance == s1.count {
                let charLeft = s2[left]
                if let countCharS1 = countS1[charLeft], let countCharS2 = countS2[charLeft], countCharS1 == countCharS2 {
                  need -= 1
                }
                countS2[charLeft, default: 0] -= 1
                left += 1
            }

        }
        return false

    }
}