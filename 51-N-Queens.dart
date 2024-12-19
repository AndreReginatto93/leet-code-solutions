class Solution {
  List<List<List<String>>> boards = [];
  int count = 0;
  List<List<String>> solveNQueens(int n) {
    for (var i = 0; i < n; i++) {
      List<List<String>> board = [];

      for (var i = 0; i < n; i++) {
        board.add([]);
        for (var j = 0; j < n; j++) {
          board[i].add(".");
        }
      }

      board[0][i] = "Q";

      if (n == 1) {
        boards.add(board);
        return finishSolve();
      }

      //row = 1
      //column 0
      solve(board, n, 0, 1);
    }
    return finishSolve();
  }

  List<List<String>> finishSolve() {
    List<List<String>> returnBoard = [];
    for (var element in boards) {
      returnBoard.add([]);
      for (var element2 in element) {
        returnBoard.last.add(element2.join(""));
      }
      print(returnBoard.last);
    }

    return returnBoard;
  }

  void solve(List<List<String>> board, int n, int x, int y) {
    if (x >= n || y >= n) return;
    count++;

    //create new board
    List<List<String>> copyBoard = [];
    int queensAmount = 0;
    for (var i = 0; i < board.length; i++) {
      copyBoard.add([]);
      for (var j = 0; j < board[i].length; j++) {
        if (board[i][j] == "Q") {
          queensAmount++;
        }
        copyBoard[i].add(board[i][j]);
      }
    }

    if (isValid(copyBoard, n, x, y)) {
      //new queen
      copyBoard[y][x] = "Q";
      queensAmount++;

      if (queensAmount == n) {
        boards.add(copyBoard);
      } else {
        solve(copyBoard, n, 0, y + 1);
      }
    }
    solve(board, n, x + 1, y);
  }

  bool isValid(List<List<String>> board, int n, int x, int y) {
    for (var i = 0; i < n; i++) {
      for (var j = 0; j < n; j++) {
        if ((board[i][j] == "Q") && (i == y || j == x)) {
          return false;
        }
      }
    }

    //sum index
    int xs = x;
    int ys = y;

    //subtract index
    int xsub = x;
    int ysub = y;

    while (ys < n || xs < n || ysub >= 0 || xsub >= 0) {
      //
      if (ys < n && xs < n)
        if (board[ys][xs] == "Q") {
          return false;
        }
      //
      if (ysub >= 0 && xsub >= 0)
        if (board[ysub][xsub] == "Q") {
          return false;
        }
      //
      if (ys < n && xsub >= 0)
        if (board[ys][xsub] == "Q") {
          return false;
        }
      //
      if (ysub >= 0 && xs < n)
        if (board[ysub][xs] == "Q") {
          return false;
        }
      xs++;
      ys++;
      xsub--;
      ysub--;
    }

    return true;
  }
}

void main() {
  Solution solution = Solution();
  solution.solveNQueens(1);
}
