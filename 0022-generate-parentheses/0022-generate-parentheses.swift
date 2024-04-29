class Solution {
    func generateParenthesis(_ n: Int) -> [String] {
        var stackStr: [String] = []
        func generate(left: Int, right: Int, string: String) {
            if right == n {
                stackStr.append(string)
                return
            }
            if left < n {
                generate(left: left+1, right: right, string: string + "(")
            }
            if right < left {
                generate(left: left, right: right+1, string: string + ")")
            }
        }
        generate(left: 1, right: 0, string: "(")
        return stackStr
    }
}