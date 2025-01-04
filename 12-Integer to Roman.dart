class Solution {
  String intToRoman(int num) {
    List<int> values = [1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1];
    List<String> symbols = [
      "M",
      "CM",
      "D",
      "CD",
      "C",
      "XC",
      "L",
      "XL",
      "X",
      "IX",
      "V",
      "IV",
      "I",
    ];

    StringBuffer romanNumber = StringBuffer();

    for (int i = 0; i < values.length; i++) {
      while (num >= values[i]) {
        num -= values[i];
        romanNumber.write(symbols[i]);
      }
    }

    return romanNumber.toString();
  }
}

void main() {
  Solution solution = Solution();

  print(solution.intToRoman(1994));
}
