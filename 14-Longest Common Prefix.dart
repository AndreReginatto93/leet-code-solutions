class Solution {
  String longestCommonPrefix(List<String> strs) {
    int shortestIndex = max(strs);

    String longestPrefix = "";

    for (var i = 0; i < strs[shortestIndex].length; i++) {
      String currentLetter = strs[0][i];
      bool isEquals = true;

      for (var j = 0; j < strs.length; j++) {
        if (currentLetter != strs[j][i]) {
          isEquals = false;
          break;
        }
      }
      if (isEquals) {
        longestPrefix += currentLetter;
      } else {
        break;
      }
    }

    return longestPrefix;
  }

  //get
  int max(List<String> strs) {
    int indexShortestLength = 0;
    int ShortestLenth = strs[0].length;
    for (var i = 0; i < strs.length; i++) {
      var str = strs[i];
      if (str.length < ShortestLenth) {
        ShortestLenth = str.length;
        indexShortestLength = i;
      }
    }
    return indexShortestLength;
  }
}

void main() {
  Solution solution = Solution();

  print(solution.longestCommonPrefix(["flower", "flow", "flight"]));
  print(solution.longestCommonPrefix(["dog", "racecar", "car"]));
}
