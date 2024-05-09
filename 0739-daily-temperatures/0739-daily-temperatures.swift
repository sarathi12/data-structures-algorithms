class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var stack: [Int] = []
        var result: [Int] = Array(repeating: 0, count: temperatures.count)
        for index in 0..<temperatures.count {
            while !stack.isEmpty && temperatures[index] > temperatures[stack.last!] {
                let lastIndex = stack.removeLast()
                result[lastIndex] = index - lastIndex
            }
            stack.append(index)
        }
        return result
    }
}