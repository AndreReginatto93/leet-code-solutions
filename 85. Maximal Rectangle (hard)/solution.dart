import 'dart:math';

class Solution {
  int maximalRectangle(List<List<String>> matrix) {
    int maxRectangle = 0;

    for (var i = 0; i < matrix.length; i++) {
      for (var j = 0; j < matrix[i].length; j++) {
        // Start searching for rectangles if the current cell is "1"
        if (matrix[i][j] == "1") {
          int currentRectangle =
              0; // Area of the current rectangle being explored
          bool canBreak = false; // Controls when to exit the loop early
          int y = j; // Current column index
          int columnCounter = 1; // Width of the rectangle in columns
          int columnMaxLength =
              matrix.length; // Maximum height available for this rectangle

          // Extend the rectangle downward from (i, j)
          for (var x = i; x < matrix.length; x++) {
            if (matrix[x][y] == "1" && x < columnMaxLength) {
              // Still within a valid rectangle
              canBreak = false;
              currentRectangle +=
                  columnCounter; // Add the current column width to the area

              if (x == matrix.length - 1) {
                // Reached the bottom of the matrix
                maxRectangle = max(maxRectangle, currentRectangle);

                // Move to the next column in the same row, reset area, and increase width
                canBreak = true;
                y++;
                currentRectangle = 0;
                columnCounter++;

                // Stop if we go beyond the last column
                if (y >= matrix[x].length) break;

                // Reset x to re-check from the starting row for the new column
                x = i - 1;
              }
            } else {
              // Found a "0" or reached max column height limit
              columnMaxLength = x;

              if (canBreak) break; // Exit if we already processed the rectangle

              // Update the max area found so far
              maxRectangle = max(maxRectangle, currentRectangle);

              // Move to the next column, reset area, and increase width
              canBreak = true;
              y++;
              currentRectangle = 0;
              columnCounter++;

              // Stop if we go beyond the last column
              if (y >= matrix[x].length) break;

              // Reset x to re-check from the starting row for the new column
              x = i - 1;
            }
          }

          // Final max area check for the current rectangle
          maxRectangle = max(maxRectangle, currentRectangle);
        }
      }
    }
    return maxRectangle;
  }
}

void main() {
  Solution solution = Solution();

  solution.maximalRectangle([
    ["1"],
  ]);
}
