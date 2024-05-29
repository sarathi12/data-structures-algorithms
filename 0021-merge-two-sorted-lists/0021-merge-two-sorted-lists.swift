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
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var dummy: ListNode? = ListNode()
        var sortedList: ListNode? = dummy
        
        var l1 = list1
        var l2 = list2
        while l1 != nil && l2 != nil {
            if (l1?.val ?? 0) <= (l2?.val ?? 0) {
                sortedList?.next = l1
                l1 = l1?.next
            } else {
                sortedList?.next = l2
                l2 = l2?.next
            }
            sortedList = sortedList?.next
        }
        
        if l1 != nil {
            sortedList?.next = l1
        }
        else if l2 != nil {
            sortedList?.next = l2
        }
        return dummy?.next
    }
}