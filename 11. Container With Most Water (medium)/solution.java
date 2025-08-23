
class Solution {

    public static void main(String[] args) {
        System.out.println(maxArea(new int[]{1, 8, 6, 2, 5, 4, 8, 3, 7}));
    }

    public static int maxArea(int[] height) {
        int maxArea = 0;
        int left = 0;
        int right = height.length - 1;

        while (left < right) {
            int size = right - left;
            int firstHeight = height[left];
            int lastHeight = height[right];

            // System.out.format("%d, %d, %d, %d%n", left, right, size, maxArea);
            if (firstHeight > lastHeight) {
                right--;
                int currentArea = lastHeight * size;
                maxArea = Integer.max(maxArea, currentArea);
            } else {
                left++;
                int currentArea = firstHeight * size;
                maxArea = Integer.max(maxArea, currentArea);
            }
        }

        return maxArea;
    }
}
