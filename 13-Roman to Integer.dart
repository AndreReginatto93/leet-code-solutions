class Solution {
  int romanToInt(String s) {
    int number = 0;
    int lastNumber = 0;
    Map<String, int> romanNumberMap = {
      "I": 1,
      "V": 5,
      "X": 10,
      "L": 50,
      "C": 100,
      "D": 500,
      "M": 1000,
    };
    for (var i = s.length - 1; i >= 0; i--) {
      int currentNumber = romanNumberMap[s[i]] ?? 0;
      if (lastNumber > currentNumber) {
        number -= currentNumber;
      } else {
        number += currentNumber;
      }
      lastNumber = currentNumber;
    }

    return number;
  }
}

void main() {
  Solution solution = Solution();

  print(solution.romanToInt("IX"));
  print(solution.romanToInt("III"));
  print(solution.romanToInt("LVIII"));
  print(solution.romanToInt("MCMXCIV"));
}
