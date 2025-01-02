class Solution {
  int reverse(int x) {
    bool negative = x < 0;

    String stringNumber = x.toString().replaceAll("-", "");

    List<int> intList =
        stringNumber.split("").map((i) => int.parse(i)).toList();

    List reversedList = intList.reversed.toList();

    int reversedNumber = int.parse(reversedList.join(""));

    if (negative) reversedNumber *= -1;

    if (reversedNumber >= 2147483648 || reversedNumber < -2147483648) return 0;

    print(reversedNumber);

    return reversedNumber;
  }
}

void main() {
  Solution solution = Solution();

  solution.reverse(123);
  solution.reverse(-321);
  solution.reverse(120);
  solution.reverse(1534236469);
}
