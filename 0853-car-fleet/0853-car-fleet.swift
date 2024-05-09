class Solution {
    func carFleet(_ target: Int, _ position: [Int], _ speed: [Int]) -> Int {
        let zip = Array(zip(position, speed)).sorted{$0 > $1}
        var stack: [Double] = []
        for (pos, s) in zip {
            let reachTime: Double = Double(target - pos) / Double(s)
            stack.append(reachTime)
            guard stack.count >= 2 else { continue }
            let suffix: [Double] = stack.suffix(2)
            if suffix.last! <= suffix.first! {
                stack.removeLast()
            }
        }
        
        return stack.count
        
    }
}