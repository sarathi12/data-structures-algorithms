class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        typealias indexHeight = (index: Int, height: Int)
        var stack: [indexHeight] = []
        var maxArea: Int = 0
        for (index, height) in heights.enumerated() {
            var start = index
            while !stack.isEmpty, stack.last!.height > height {
                let lastVal = stack.removeLast()
                let newMaxArea = lastVal.height * (index - lastVal.index)
                if newMaxArea > maxArea {
                    maxArea = newMaxArea
                }
                start = lastVal.index
            }
            stack.append((index: start, height: height))
        }
        while !stack.isEmpty {
            let lastVal = stack.removeLast()
                let newMaxArea = lastVal.height * (heights.count - lastVal.index)
                if newMaxArea > maxArea {
                    maxArea = newMaxArea
                }
        }
        return maxArea
    }
}