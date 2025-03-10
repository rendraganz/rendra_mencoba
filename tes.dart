import 'dart:io';

// Fungsi rekursif untuk menghitung nilai dalam Segitiga Pascal
int pascal(int n, int k) {
  if (k == 0 || k == n) {
    return 1; // Base case
  }
  return pascal(n - 1, k - 1) + pascal(n - 1, k); // Rekursi
}

void main() {
  const int rows = 5;

  // Cetak Segitiga Pascal dengan format rapi
  for (int i = 0; i < rows; i++) {
    stdout.write(" " * (rows - i)); // Spasi untuk merapikan tampilan
    for (int j = 0; j <= i; j++) {
      stdout.write("${pascal(i, j)} ".padLeft(2, ' '));
    }
    print("");
  }
}
