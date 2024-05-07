class Solution {
    func evalRPN(_ tokens: [String]) -> Int {
        var stack: [Int] = []
        for token in tokens {
            if token == "+" || token == "-" || token == "*" || token == "/" {
                let secondDigit = stack.removeLast()
                let firstDigit = stack.removeLast()
                if token == "+" {
                    stack.append(firstDigit + secondDigit)
                }
                else if token == "-" {
                    stack.append(firstDigit - secondDigit)
                }
                else if token == "*" {
                    stack.append(firstDigit * secondDigit)
                }
                else if token == "/" {
                    stack.append(Int(Float(firstDigit/secondDigit)))
                }
            } else {
                if let val = Int(token) {
                   stack.append(val) 
                }
                
            }
        }
        return stack.first ?? 0
    }
}