class Solution {
  int reverse(int x) {
    bool negative = x < 0;

    String stringNumber = x.toString().replaceAll("-", "");

    List<int> intList =
        stringNumber.split("").map((i) => int.parse(i)).toList();

    List reversedList = intList.reversed.toList();

    int reversedNumber = int.parse(reversedList.join(""));

    if (negative) reversedNumber *= -1;

    return reversedNumber;
  }
}

void main() {
  Solution solution = Solution();

  solution.reverse(123);
  solution.reverse(-321);
  solution.reverse(120);
}
