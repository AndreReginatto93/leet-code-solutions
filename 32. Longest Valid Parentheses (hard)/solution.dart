class Solution {
  int longestValidParentheses(String s) {
    int maxLength = 0;
    List<int> stack = [-1];

    for (var i = 0; i < s.length; i++) {
      if (s[i] == "(") {
        stack.add(i);
      } else {
        stack.removeLast();
        if (stack.isEmpty) {
          stack.add(i);
        } else {
          maxLength = max(maxLength, i - stack.last);
        }
      }
    }

    return maxLength;
  }

  int max(int a, int b) {
    return (a > b) ? a : b;
  }
}

void main() {
  Solution solution = Solution();

  print(solution.longestValidParentheses("(()")); // Output: 2
  print(solution.longestValidParentheses(")()())")); // Output: 4
  print(solution.longestValidParentheses("")); // Output: 0
  print(solution.longestValidParentheses("()")); // Output: 2
}
