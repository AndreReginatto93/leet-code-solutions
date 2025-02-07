class Solution {
  List<int> findThePrefixCommonArray(List<int> A, List<int> B) {
    //A.length == B.length!
    List<int> resultInt = List.filled(A.length, 0);
    for (var i = 0; i < A.length; i++) {
      List<int> tempList = A.getRange(0, i + 1).toList();
      List<int> tempListB = B.getRange(0, i + 1).toList();
      int counter = 0;

      for (var element in tempListB) {
        if (tempList.contains(element)) counter++;
      }
      resultInt[i] = counter;
    }
    return resultInt;
  }
}

void main() {
  Solution solution = Solution();

  solution.findThePrefixCommonArray([1, 3, 2, 4], [3, 1, 2, 4]);
}
