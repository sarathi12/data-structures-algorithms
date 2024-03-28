class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var rSet: [Int: Set<Int>] = [:]
        var cSet: [Int: Set<Int>] = [:]
        var rcSet: [String: Set<Int>] = [:]
        for rIdx in 0...8 {
            let rowBox: Int = rIdx / 3
            for cIdx in 0...8 {
                let colBox: Int = cIdx / 3
                let rcKey: String = "\(rowBox), \(colBox)"
                if (board[rIdx][cIdx] != ".") {
                    if let currValue = board[rIdx][cIdx].wholeNumberValue {
                        var rSetValues: Set<Int> = rSet[rIdx] ?? Set<Int>()
                        var cSetValues: Set<Int> = cSet[cIdx] ?? Set<Int>()
                        var rcSetValues: Set<Int> = rcSet[rcKey] ?? Set<Int>()
                        if rcSetValues.contains(currValue) || rSetValues.contains(currValue) || cSetValues.contains(currValue) {
                            return false
                        }
                        rSetValues.insert(currValue)
                        rSet[rIdx] = rSetValues
                        cSetValues.insert(currValue)
                        cSet[cIdx] = cSetValues
                        rcSetValues.insert(currValue)
                        rcSet[rcKey] = rcSetValues
                        
                    }
                }
            }
        }
        
        return true
    }
}