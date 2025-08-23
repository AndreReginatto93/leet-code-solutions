
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

class Solution {

    public static void main(String[] args) {
        System.out.println(intToRoman(3749));
        System.out.println(intToRoman(3900));
        System.out.println(intToRoman(1994));
    }

    public static String intToRoman(int num) {
        HashMap<Integer, String> map = new HashMap<>();
        map.put(1000, "M");
        map.put(900, "CM");
        map.put(500, "D");
        map.put(400, "CD");
        map.put(100, "C");
        map.put(90, "XC");
        map.put(50, "L");
        map.put(40, "XL");
        map.put(10, "X");
        map.put(9, "IX");
        map.put(5, "V");
        map.put(4, "IV");
        map.put(1, "I");

        List<Integer> values = Arrays.asList(
                1000, 900, 500, 400,
                100, 90, 50, 40,
                10, 9, 5, 4, 1
        );

        StringBuilder sb = new StringBuilder();

        for (int value : values) {
            while (num >= value) {
                sb.append(map.get(value));
                num -= value;
            }
        }

        return sb.toString();
    }
}
