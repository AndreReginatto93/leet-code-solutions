
class ListNode {

    int val;
    ListNode next;

    ListNode() {
    }

    ListNode(int val) {
        this.val = val;
    }

    ListNode(int val, ListNode next) {
        this.val = val;
        this.next = next;
    }

    public static void main(String args[]) {
    }
}

class Solution {

    public static void main(String args[]) {
        Solution solution = new Solution();

        ListNode l1 = new ListNode(2, new ListNode(4, new ListNode(3)));
        ListNode l2 = new ListNode(5, new ListNode(6, new ListNode(4)));
        ListNode result = solution.addTwoNumbers(l1, l2);
        // Print the result list
        while (result != null) {
            System.out.print(result.val + " ");
            result = result.next;
        }
    }

    int carry = 0;

    public ListNode addTwoNumbers(ListNode l1, ListNode l2) {
        if (l1 == null && l2 == null && carry == 0) {
            return null;
        }

        int l1Value = (l1 != null) ? l1.val : 0;
        int l2Value = (l2 != null) ? l2.val : 0;

        int sum = l1Value + l2Value + carry;
        carry = sum / 10;
        sum = sum % 10;

        ListNode resultNode = new ListNode(sum);
        resultNode.next = addTwoNumbers((l1 != null) ? l1.next : null, (l2 != null) ? l2.next : null);
        return resultNode;
    }
}
