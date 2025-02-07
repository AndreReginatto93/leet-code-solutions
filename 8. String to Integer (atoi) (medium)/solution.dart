class Solution {
  int myAtoi(String s) {
    const MAX = 2147483647;
    const MIN = -2147483648;
    s = s.trim();

    String resultNumber = "";
    int resultInt = 0;
    bool isNegative = false;
    bool started = false;

    for (var i = 0; i < s.length; i++) {
      if (resultNumber == "" && s[i] == "-") {
        if (started) return 0;
        isNegative = true;
        started = true;
      } else if (resultNumber == "" && s[i] == "+") {
        if (started) return 0;
        isNegative = false;
        started = true;
      } else if (resultNumber == "" && s[i] == "0") {
        started = true;
      } else {
        try {
          int.parse(s[i]);
        } catch (e) {
          break;
        }

        resultNumber += s[i];
      }
    }

    if (resultNumber == "") {
      return 0;
    }
    if (resultNumber.length > 10 && !isNegative) return MAX;
    if (resultNumber.length > 10 && isNegative) return MIN;
    resultInt = int.parse(resultNumber);
    if (isNegative) resultInt *= -1;
    print(resultInt);
    if (resultInt > MAX) return MAX;
    if (resultInt < MIN) return MIN;
    return resultInt;
  }
}

void main() {
  Solution solution = Solution();

  solution.myAtoi("42");
  solution.myAtoi(" -042");
  solution.myAtoi("1337c0d3");
  solution.myAtoi("0-1");
  solution.myAtoi("words and 987");
  solution.myAtoi("-91283472332");
  solution.myAtoi("+1");
  solution.myAtoi("+-1");
  solution.myAtoi("20000000000000000000");
  solution.myAtoi("  0000000000012345678");
}
