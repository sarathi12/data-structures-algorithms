/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func reorderList(_ head: ListNode?) {
        var slow: ListNode? = head
        var fast: ListNode? = head?.next
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        var second: ListNode? = slow?.next
        var prev: ListNode? = nil
        slow?.next = nil
        while second != nil {
            let temp = second?.next
            second?.next = prev
            prev = second
            second = temp
        }
        
        var first = head
        second = prev
        while second != nil {
            let temp1 = first?.next
            let temp2 = second?.next
            first?.next = second
            second?.next = temp1
            first = temp1
            second = temp2
        }
        
    }
}