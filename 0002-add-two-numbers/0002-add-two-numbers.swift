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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var dummy = ListNode()
        var sumList: ListNode? = dummy
        var l1 = l1
        var l2 = l2
        var reminder: Int = 0
        while l1 != nil || l2 != nil || reminder > 0 {
            let total = (l1?.val ?? 0) + (l2?.val ?? 0) + reminder
            reminder = total / 10
            let sum = total % 10
            sumList?.next = ListNode(sum)
            sumList = sumList?.next

            l1 = l1?.next
            l2 = l2?.next
        }
        return dummy.next
    }
}