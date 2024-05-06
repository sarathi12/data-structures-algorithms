class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var stack: [String] = []
        func dfs(_ left: Int, _ right: Int, _ string: String) {
            if right == n {
                stack.append(string)
                return
            }
            
            if left < n {
                dfs(left + 1, right, string + "(")
            }
            if right < left {
                dfs(left, right + 1, string + ")")
            }
        }
        dfs(1, 0, "(")
        return stack
    }
}