class Solution {
    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {
        var stack: [Double] = []
        var pair = zip(position, speed).sorted{$0 > $1}
        for (pos, s) in pair {
            let hoursTake: Double = Double(Double(target - pos) / Double(s))
            stack.append(hoursTake)
            guard stack.count >= 2 else {continue}
            let suffixStack = stack.suffix(2)
            if suffixStack.last! <= suffixStack.first! {
                stack.removeLast()
            }
        }
        return stack.count
    }
}