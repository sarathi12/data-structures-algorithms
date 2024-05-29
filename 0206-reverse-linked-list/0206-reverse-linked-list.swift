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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var currNode: ListNode? = head
        var prev: ListNode? = nil
        while currNode != nil {
            let nextNode = currNode?.next
            currNode?.next = prev
            prev = currNode
            currNode = nextNode
        }
        return prev
    }
}