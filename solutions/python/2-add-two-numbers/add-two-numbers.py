# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def addTwoNumbers(self, l1: Optional[ListNode], l2: Optional[ListNode]) -> Optional[ListNode]:
        carry=0
        sum=0
        temp_head = ListNode(0)
        temp_tail = temp_head

        while l1 is not None or l2 is not None or carry!=0: 
            digit1= l1.val if l1 else 0
            digit2= l2.val if l2 else 0

            sum = digit1 + digit2 + carry

            digit = sum % 10
            carry = sum // 10

            newNode = ListNode(digit)
            temp_tail.next = newNode # attach new node to end of tail
            temp_tail = temp_tail.next # move tail forward

            l1 = l1.next if l1 else None # move l1 to next node
            l2 = l2.next if l2 else None # move l2 to next node


        return temp_head.next










         










        
        