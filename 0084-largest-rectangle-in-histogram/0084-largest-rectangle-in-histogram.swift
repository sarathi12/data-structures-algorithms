class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var maxArea: Int = 0
        typealias indexHeights = (index: Int, height: Int)
        var stack: [indexHeights] = []
        for (index, height) in heights.enumerated() {
            var start = index
            while !stack.isEmpty, stack.last!.height > height {
                let lastVal = stack.removeLast()
                var newHeight = lastVal.height * (index - lastVal.index)
                if newHeight > maxArea {
                    maxArea = newHeight
                }
                start = lastVal.index
            }            
            stack.append((index: start, height: height))
        }
        while !stack.isEmpty {
            let lastVal = stack.removeLast()
            var newHeight = lastVal.height * (heights.count - lastVal.index)
                if newHeight > maxArea {
                    maxArea = newHeight
                }
        }
        return maxArea
    }
}