class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var maxLength: Int = 0
        var start: Int = 0
        var end: Int = height.count - 1
        while end > start {
            let diff = end - start
            if height[start] < height[end] {
                let newLength = diff * height[start]
                if newLength > maxLength {
                    maxLength = newLength
                }
                start += 1
            } else {
                let newLength = diff * height[end]
                if newLength > maxLength {
                    maxLength = newLength
                }
                end -= 1
            }
        }
        return maxLength
    }
}