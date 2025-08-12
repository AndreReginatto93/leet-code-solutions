class Solution {
  int firstUniqChar(String s) {
    int index = -1;

    for (var i = 0; i < s.length; i++) {
      bool hasEqual = false;
      for (var j = 0; j < s.length; j++) {
        if (i == j) continue;

        if (s[i] == s[j]) {
          hasEqual = true;
          break;
        }
      }
      if (!hasEqual) {
        index = i;
        break;
      }
    }

    return index;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.firstUniqChar("leetcode"));
  print(solution.firstUniqChar("aabb"));
  print(solution.firstUniqChar("loveleetcode"));
  print(solution.firstUniqChar("leetcode"));
}
