
class Solution {

    public static void main(String args[]) {
        Solution solution = new Solution();
        System.err.println(solution.numberOfSteps(14));
        solution.steps = 0;
        System.err.println(solution.numberOfSteps(8));
        solution.steps = 0;
        System.err.println(solution.numberOfSteps(123));
        solution.steps = 0;
        System.err.println(solution.numberOfSteps(0));
    }

    int steps = 0;

    public int numberOfSteps(int num) {
        if (num == 0) {
            return steps;
        }
        if (num % 2 == 0) {
            num /= 2;
        } else {
            num -= 1;
        }
        steps++;
        return numberOfSteps(num);
    }
}
