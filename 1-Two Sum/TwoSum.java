
import java.util.HashMap;

public class TwoSum {

    public static void main(String args[]) {
        int[] nums = {2, 7, 11, 15};
        int[] result = twoSum(nums, 9);
        System.out.println("Index: " + result[0] + ", " + result[1]);

        int[] nums2 = {3, 2, 4};
        int[] result2 = twoSum(nums2, 6);
        System.out.println("Index: " + result2[0] + ", " + result2[1]);

        int[] nums3 = {3, 6};
        int[] result3 = twoSum(nums3, 9);
        System.out.println("Index: " + result3[0] + ", " + result3[1]);
    }

    public static int[] twoSum(int[] nums, int target) {
        HashMap<Integer, Integer> indexesNums = new HashMap<>();

        for (int i = 0; i < nums.length; i++) {
            int rest = target - nums[i];
            if (indexesNums.containsKey(rest)) {
                return new int[]{indexesNums.get(rest), i};
            }
            indexesNums.put(nums[i], i);
        }

        throw new IllegalArgumentException("No two sum solution");
    }
}
