class Solution {
  List<int> spiralOrder(List<List<int>> matrix) {
    List<int> spiralList = [];
    try {
      while (matrix.length > 0) {
        if (matrix.length == 0) break;
        //first line
        spiralList.addAll(matrix[0]);
        matrix.removeAt(0);

        if (matrix.length == 0) break;
        //Right
        for (var i = 0; i < matrix.length; i++) {
          spiralList.add(matrix[i].last);

          matrix[i].removeAt(matrix[i].length - 1);
        }

        if (matrix.length == 0) break;
        //Bottom
        for (var i = matrix.last.length - 1; i >= 0; i--) {
          spiralList.add(matrix.last[i]);
        }
        matrix.removeAt(matrix.length - 1);

        if (matrix.length == 0) break;
        //Left
        for (var i = matrix.length - 1; i >= 0; i--) {
          spiralList.add(matrix[i][0]);

          matrix[i].removeAt(0);
        }
      }
    } catch (e) {
      return spiralList;
    } finally {
      return spiralList;
    }
  }
}

void main() {
  Solution solution = Solution();
  print(
    solution.spiralOrder([
      [1, 1, 1, 1, 1, 1, 1],
      [2, 2, 2, 2, 2, 2, 2],
      [3, 3, 3, 3, 3, 3, 3],
      [4, 4, 4, 4, 4, 4, 4],
      [5, 5, 5, 5, 5, 5, 5],
      [6, 6, 6, 6, 6, 6, 6],
      [7, 7, 7, 7, 7, 7, 7],
    ]),
  );
  print(
    solution.spiralOrder([
      [1, 2, 3],
      [4, 5, 6],
      [7, 8, 9],
    ]),
  );
  print(
    solution.spiralOrder([
      [1, 2, 3, 4],
      [5, 6, 7, 8],
      [9, 10, 11, 12],
    ]),
  );
  print(
    solution.spiralOrder([
      [1, 2, 3, 4],
      [5, 6, 7, 8],
      [9, 10, 11, 12],
      [13, 14, 15, 16],
      [17, 18, 19, 20],
      [21, 22, 23, 24],
    ]),
  );
}
