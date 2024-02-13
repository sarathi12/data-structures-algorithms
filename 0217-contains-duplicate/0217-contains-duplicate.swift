class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var storedNums: [Int] = []
        for num in nums {
            if storedNums.contains(num) {
                return true
            }
            storedNums.append(num)
        }
        return false
    }
}