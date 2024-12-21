class Solution {
  bool isValidSudoku(List<List<String>> board) {
    for (var i = 0; i < board.length; i++) {
      for (var j = 0; j < board[i].length; j++) {
        if (board[i][j] == ".") continue;
        if (!isValid(board, i, j)) {
          return false;
        }
      }
    }

    return true;
  }

  bool isValid(List<List<String>> board, int y, int x) {
    for (var i = 0; i < board.length; i++) {
      //check vertical
      if (board[y][x] == board[i][x] && y != i) {
        print("${board[y][x]} == ${board[i][x]}");
        return false;
      }
      //check horizontal
      if (board[y][x] == board[y][i] && x != i) {
        print("${board[y][x]} == ${board[i][x]}");
        return false;
      }
    }

    //Quadrants
    int xQuadrant = (x / 3).floor() * 3;
    int yQuadrant = (y / 3).floor() * 3;
    // print(xQuadrant);
    // print(yQuadrant);

    for (var i = xQuadrant; i < xQuadrant + 3; i++) {
      for (var j = yQuadrant; j < yQuadrant + 3; j++) {
        if (board[y][x] == board[j][i] && x != i && y != j) {
          print("${board[y][x]} == ${board[j][i]}");
          return false;
        }
      }
    }

    return true;
  }
}

void main() {
  Solution solution = Solution();
  print(
    solution.isValidSudoku([
      [".", ".", ".", ".", "5", ".", ".", "1", "."],
      [".", "4", ".", "3", ".", ".", ".", ".", "."],
      [".", ".", ".", ".", ".", "3", ".", ".", "1"],
      ["8", ".", ".", ".", ".", ".", ".", "2", "."],
      [".", ".", "2", ".", "7", ".", ".", ".", "."],
      [".", "1", "5", ".", ".", ".", ".", ".", "."],
      [".", ".", ".", ".", ".", "2", ".", ".", "."],
      [".", "2", ".", "9", ".", ".", ".", ".", "."],
      [".", ".", "4", ".", ".", ".", ".", ".", "."],
    ]),
  );
}
