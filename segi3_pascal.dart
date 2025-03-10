import 'dart:io';

int pascal(int n, int k) {
  if (k == 0 || k == n) {
    return 1; 
  }
  return pascal(n - 1, k - 1) + pascal(n - 1, k); 
}

void main() {
  const int rows = 5;

  
  for (int i = 0; i < rows; i++) {
    stdout.write(" " * (rows - i)); 
    for (int j = 0; j <= i; j++) {
      stdout.write("${pascal(i, j)} ".padLeft(2, ' '));
    }
    print("");
  }
}
