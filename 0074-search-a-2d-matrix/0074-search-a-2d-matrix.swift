class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        guard !matrix.isEmpty else { return false}
        var rowL: Int = 0
        var rowH: Int = matrix.count - 1
        let col = matrix[0]
        let end = col.count - 1
        while rowL <= rowH {
            var rowM: Int = (rowL + rowH) / 2
            if matrix[rowM][0] > target {
                rowH = rowM - 1
            } else if matrix[rowM][end] < target{
                rowL = rowM + 1
            } else {
                break
            }
        }
        if rowH < rowL {
            return false
        }
        var rowM: Int = (rowL + rowH) / 2
        var l: Int = 0
        var h: Int = col.count - 1
        while l <= h {
            var mid: Int = (l + h) / 2
            if matrix[rowM][mid] < target {
                l = mid + 1
            } else if matrix[rowM][mid] > target {
                h = mid - 1
            } else {
                return true
            }
        }
        return false
    }
}