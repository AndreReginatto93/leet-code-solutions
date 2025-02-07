
class Solution {

    public static void main(String args[]) {
        System.err.println(Solution.reverse(123));
        System.err.println(Solution.reverse(-123));
        System.err.println(Solution.reverse(120));
    }

    public static int reverse(int x) {
        boolean isNegative = x < 0 ? true : false;

        if (isNegative) {
            x = x * -1;
        }

        String y = String.valueOf(x);
        String reversedString = "";
        for (int i = y.length() - 1; i >= 0; i--) {
            reversedString = reversedString.concat(String.valueOf(y.charAt(i)));
        }
        int reverserInt = 0;
        try {
            reverserInt = Integer.parseInt(reversedString);

        } catch (NumberFormatException e) {
            return 0;
        }

        if (isNegative) {
            reverserInt = reverserInt * -1;
        }

        return reverserInt;
    }
}
