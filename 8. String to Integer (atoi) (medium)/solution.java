
class Solution {

    public static void main(String args[]) {
        System.err.println(Solution.myAtoi("42"));
        System.err.println(Solution.myAtoi("   -42"));
        System.err.println(Solution.myAtoi("1337c0d3"));
        System.err.println(Solution.myAtoi("0-1"));
        System.err.println(Solution.myAtoi("words and 987"));
        System.err.println(Solution.myAtoi("-91283472332"));
        System.err.println(Solution.myAtoi(""));
    }

    public static int myAtoi(String s) {
        s = s.trim();
        if (s.length() == 0) {
            return 0;
        }

        int sign = 1;
        int index = 0;
        if (s.charAt(0) == '+' || s.charAt(0) == '-') {
            sign = (s.charAt(0) == '-') ? -1 : 1;
            index++;
        }

        long result = 0;
        while (index < s.length()) {
            char currentChar = s.charAt(index);
            if (!Character.isDigit(currentChar)) {
                break;
            }

            //Multiply the current result by 10 to shift its digits to the left.
            //Convert the current character to its numeric value and add it to the result.
            result = result * 10 + (currentChar - '0');
            if (result * sign > Integer.MAX_VALUE) {
                return Integer.MAX_VALUE;
            }
            if (result * sign < Integer.MIN_VALUE) {
                return Integer.MIN_VALUE;
            }
            index++;
        }

        return (int) (result * sign);
    }
}
