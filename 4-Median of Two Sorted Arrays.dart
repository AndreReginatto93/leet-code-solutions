class Solution {
  double findMedianSortedArrays(List<int> nums1, List<int> nums2) {
    final sortedArrays = <int>[...nums1, ...nums2]..sort();

    if (sortedArrays.length % 2 == 1)
      return sortedArrays[(sortedArrays.length / 2).floor()].toDouble();
    else {
      return (sortedArrays[(sortedArrays.length / 2).round() - 1].toDouble() +
              sortedArrays[(sortedArrays.length / 2).round()].toDouble()) /
          2;
    }
  }
}

void main() {
  Solution solution = Solution();
  print(solution.findMedianSortedArrays([1], [10]));
  print(solution.findMedianSortedArrays([1, 3], [2]));
  print(solution.findMedianSortedArrays([1, 2], [3, 4]));
  print(solution.findMedianSortedArrays([1, 2, 3, 4, 5, 6, 7, 8, 9], [10, 11]));
}
