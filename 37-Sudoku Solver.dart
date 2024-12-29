class Solution {
  void solveSudoku(List<List<String>> board) {
    _solve(board);
  }

  bool _solve(List<List<String>> board) {
    for (int i = 0; i < 9; i++) {
      for (int j = 0; j < 9; j++) {
        if (board[i][j] == '.') {
          for (String c in '123456789'.split('')) {
            if (_isValid(board, i, j, c)) {
              board[i][j] = c;
              if (_solve(board)) {
                return true;
              } else {
                board[i][j] = '.';
              }
            }
          }
          return false;
        }
      }
    }
    return true;
  }

  bool _isValid(List<List<String>> board, int row, int col, String c) {
    for (int i = 0; i < 9; i++) {
      if (board[row][i] == c) return false;
      if (board[i][col] == c) return false;
      if (board[3 * (row ~/ 3) + i ~/ 3][3 * (col ~/ 3) + i % 3] == c)
        return false;
    }
    return true;
  }
}

void main() {
  Solution solution = Solution();

  List<List<String>> board2 = [
    [".", ".", "9", "7", "4", "8", ".", ".", "."],
    ["7", ".", ".", ".", ".", ".", ".", ".", "."],
    [".", "2", ".", "1", ".", "9", ".", ".", "."],
    [".", ".", "7", ".", ".", ".", "2", "4", "."],
    [".", "6", "4", ".", "1", ".", "5", "9", "."],
    [".", "9", "8", ".", ".", ".", "3", ".", "."],
    [".", ".", ".", "8", ".", "3", ".", "2", "."],
    [".", ".", ".", ".", ".", ".", ".", ".", "6"],
    [".", ".", ".", "2", "7", "5", "9", ".", "."],
  ];

  List<List<String>> board3 = [
    [".", ".", "9", "7", "4", "8", ".", ".", "."],
    ["7", ".", ".", "6", ".", "2", ".", ".", "."],
    [".", "2", ".", "1", ".", "9", ".", ".", "."],
    [".", ".", "7", "9", "8", "6", "2", "4", "1"],
    ["2", "6", "4", "3", "1", "7", "5", "9", "8"],
    ["1", "9", "8", "5", "2", "4", "3", "6", "7"],
    [".", ".", ".", "8", "6", "3", ".", "2", "."],
    [".", ".", ".", "4", "9", "1", ".", ".", "6"],
    [".", ".", ".", "2", "7", "5", "9", ".", "."],
  ];

  //solution.solveSudoku(board2);
  solution.solveSudoku(board3);

  print("Solved board2:");
  for (var row in board2) {
    print(row);
  }

  print("Solved board3:");
  for (var row in board3) {
    print(row);
  }
}
