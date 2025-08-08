class Solution {
  bool isValid(String s) {
    final stack = <String>[];
    final matching = {')': '(', ']': '[', '}': '{'};

    for (final char in s.split('')) {
      if (matching.containsValue(char)) {
        //push onto stack
        stack.add(char);
      } else if (matching.containsKey(char)) {
        //check if top of the stack matches
        if (stack.isEmpty || stack.removeLast() != matching[char]) {
          return false;
        }
      }
    }

    return stack.isEmpty;
  }
}

void main() {
  Solution solution = Solution();

  print(solution.isValid("()"));
  print(solution.isValid("()[]{}"));
  print(solution.isValid("(]"));
  print(solution.isValid("["));
  print(solution.isValid("]"));
}
