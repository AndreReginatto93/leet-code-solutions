
class Solution {

    public static void main() {
        System.err.println(Solution.isPalindrome(-121));
        System.err.println(Solution.isPalindrome(121));
        System.err.println(Solution.isPalindrome(10));
    }

    public static boolean isPalindrome(int x) {
        String number = String.valueOf(x);

        while (number.length() > 0) {
            if (number.length() <= 1) {
                return true;
            }
            if (number.charAt(0) != number.charAt(number.length() - 1)) {
                return false;
            }

            number = number.substring(1, number.length() - 1);
        }

        // System.out.println(number);
        return true;
    }
}
