class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        var answers: [Int] = Array(repeating: 0, count: temperatures.count)
        var stack: [Int] = []
        for i in 0..<temperatures.count {
            while !stack.isEmpty, temperatures[i] > temperatures[stack.last!] {
                let diff = i - stack.last!
                let index = stack.removeLast()
                answers[index] = diff
            }
            stack.append(i)
        }
        return answers
    }
}