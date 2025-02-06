
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import java.util.stream.Collectors;

class Solution {

    public static void main(String args[]) {
        Solution solution = new Solution();
        System.out.println(String.valueOf(solution.findMedianSortedArrays(new int[]{1, 3}, new int[]{2})));
        System.out.println(String.valueOf(solution.findMedianSortedArrays(new int[]{1, 2}, new int[]{3, 4})));
    }

    public double findMedianSortedArrays(int[] nums1, int[] nums2) {
        List<Integer> list1 = Arrays.stream(nums1).boxed().collect(Collectors.toList());
        List<Integer> list2 = Arrays.stream(nums2).boxed().collect(Collectors.toList());
        list1.addAll(list2);
        list1.sort(Comparator.naturalOrder());

        if (list1.size() % 2 == 1) {
            int index = Math.floorDiv(list1.size(), 2);
            return list1.get(index);
        } else {
            int index = Math.floorDiv(list1.size(), 2);
            return (list1.get(index) + list1.get(index - 1)) / 2.0;
        }
    }

}
