
class MinStack {
    var minStack: [Int] = []
    var stack: [Int] = []
    init() {
        
    }
    
    func push(_ val: Int) {
        stack.append(val)
        let min = min(val, minStack.last ?? Int.max)
        minStack.append(min)
    }
    
    func pop() {
        stack.removeLast()
        minStack.removeLast()
    }
    
    func top() -> Int {
        return stack.last!
    }
    
    func getMin() -> Int {
        return minStack.last!
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */