class Solution {
    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {
        var pair = zip(position, speed).sorted{ $0 > $1}
        var stack: [Double] = []
        for (pos, s) in pair {
            let value: Double = Double(Double(target - pos) / Double(s))
            stack.append(value)
            guard stack.count >= 2 else { continue }
            let suffixArr: [Double] = stack.suffix(2)
            if suffixArr.last! <= suffixArr.first! {
                stack.removeLast()
            }
        }
        return stack.count
    }
}