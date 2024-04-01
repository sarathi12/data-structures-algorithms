class Solution {
    func trap(_ height: [Int]) -> Int {
        
        var tapRainWaterMax: Int = 0
        var left: Int = 0
        var right: Int = height.count - 1
        var leftMax: Int = height[left]
        var rightMax: Int = height[right]
        while left < right {
            if height[left] < height[right] {
                leftMax = max(leftMax, height[left])
                tapRainWaterMax += leftMax - height[left]
                left += 1
            } else {
                rightMax = max(rightMax, height[right])
                tapRainWaterMax += rightMax - height[right]
                right -= 1
            }
        }
        return tapRainWaterMax
    }
}