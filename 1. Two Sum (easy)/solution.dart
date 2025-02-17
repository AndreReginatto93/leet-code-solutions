class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> numMap = {};
    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];
      if (numMap.containsKey(complement)) {
        return [numMap[complement]!, i];
      }
      numMap[nums[i]] = i;
    }

    return [0, 0];
  }
}

void main() {
  Solution solution = Solution();
  print(solution.twoSum([2, 7, 11, 15], 9));
  print(solution.twoSum([3, 2, 4], 6));
  print(solution.twoSum([3, 3], 6));
}
