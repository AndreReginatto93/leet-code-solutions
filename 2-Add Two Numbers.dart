//  Definition for singly-linked list.
class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? addTwoNumbers(ListNode? l1, ListNode? l2, [bool surplus = false]) {
    if ((l1 == null) && (l2 == null) && (surplus == false)) {
    } else {
      int val1 = (l1 != null) ? l1.val : 0;
      int val2 = (l2 != null) ? l2.val : 0;
      int sum = val1 + val2 + (surplus ? 1 : 0);
      surplus = (sum >= 10);
      return ListNode(sum % 10, addTwoNumbers(l1?.next, l2?.next, surplus));
    }
    return null;
  }
}

void main() {
  Solution solution = Solution();
  ListNode l1 = ListNode(2, ListNode(4, ListNode(3)));
  ListNode l2 = ListNode(5, ListNode(6, ListNode(4)));
  print(solution.addTwoNumbers(l1, l2));

  Solution solution2 = Solution();
  ListNode l3 = ListNode(0);
  ListNode l4 = ListNode(0);
  print(solution2.addTwoNumbers(l3, l4));

  Solution solution3 = Solution();
  ListNode l5 = ListNode(
    9,
    ListNode(
      9,
      ListNode(9, ListNode(9, ListNode(9, ListNode(9, ListNode(9))))),
    ),
  );
  ListNode l6 = ListNode(9, ListNode(9, ListNode(9, ListNode(9))));
  print(solution3.addTwoNumbers(l5, l6));
}
