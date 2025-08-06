class Solution {
  bool isPalindrome(int x) {
    String stringNumber = x.toString();

    for (var i = 0; i < stringNumber.length; i++) {
      // Compare characters from both ends towards the center
      // If any pair doesn't match, it's not a palindrome
      if (stringNumber[i] != stringNumber[stringNumber.length - 1 - i])
        return false;

      // If we've reached or passed the middle, all checks have passed
      if (i > stringNumber.length - 1 - i) return true;

      // print(i);
      // print(stringNumber.length - 1 - i);
    }
    return true;
  }
}

void main() {
  Solution solution = Solution();

  print(solution.isPalindrome(121)); //true
  print(solution.isPalindrome(-121)); //false
  print(solution.isPalindrome(10)); //false
  print(solution.isPalindrome(10)); //false
  print(solution.isPalindrome(10000000000001)); //true
}
