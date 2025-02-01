//  Definition for a binary tree node.
class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);

  @override
  String toString() {
    if (left == null && right == null) return "$val";
    return "$val, $left, $right";
  }
}

class Solution {
  TreeNode? invertTree(TreeNode? root) {
    if (root == null) return null;

    var temp = root.left;
    root.left = root.right;
    root.right = temp;

    invertTree(root.right);
    invertTree(root.left);

    return root;
  }
}

void main(List<String> args) {
  Solution solution = Solution();

  print(solution.invertTree(TreeNode(2, TreeNode(1), TreeNode(3))));
}
