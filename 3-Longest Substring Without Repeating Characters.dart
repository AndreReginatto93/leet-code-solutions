class Solution {
  int lengthOfLongestSubstring(String s) {
    int n = s.length;
    int ans = 0;
    Map<String, int> map = {};
    for (int j = 0, i = 0; j < n; j++) {
      if (map.containsKey(s[j])) {
        i = (map[s[j]]! > i) ? map[s[j]]! : i;
      }
      ans = (ans > j - i + 1) ? ans : j - i + 1;
      map[s[j]] = j + 1;
    }
    return ans;
  }
}

void main() {
  Solution solution = Solution();
  solution.lengthOfLongestSubstring("abcabcbb");
}
