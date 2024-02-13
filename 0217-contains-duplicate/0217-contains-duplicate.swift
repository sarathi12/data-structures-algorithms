class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var storedNums: Set<Int> = []
        for num in nums {
            if storedNums.contains(num) {
                return true
            }
            storedNums.insert(num)
        }
        return false
    }
}