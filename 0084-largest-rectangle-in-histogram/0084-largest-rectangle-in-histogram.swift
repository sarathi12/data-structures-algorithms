class Solution {
    func largestRectangleArea(_ heights: [Int]) -> Int {
        var largest: Int = 0
        typealias IndexHeight = (index:Int, height:Int)
        var stack: [IndexHeight] = []
        for (index, height) in heights.enumerated() {
            var start = index
            while !stack.isEmpty, stack.last!.height > height {
                let lastVal = stack.removeLast()
                let maxHeight = lastVal.height * (index - lastVal.index)
                if maxHeight > largest {
                    largest = maxHeight
                }
                start = lastVal.index
            }
            stack.append((index: start, height: height))
        }
        while !stack.isEmpty {
            let lastVal = stack.removeLast()
            let maxHeight = lastVal.height * (heights.count - lastVal.index)
            if maxHeight > largest {
                largest = maxHeight
            }
        }
        return largest
    }
}