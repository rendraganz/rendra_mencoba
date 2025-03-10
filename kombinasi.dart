import 'dart:io';

// Fungsi rekursif untuk menghasilkan kombinasi karakter
// a = karakter yang sudah digabungkan
// n = jumlah karakter yang akan digabungkan
void charCombination(String a, int n) { 
    if (n == 0) {
        stdout.write('$a '); // Menampilkan kombinasi karakter
    } else {
        for (int i = 97; i < 100; i++) {
            charCombination(a + String.fromCharCode(i), n - 1); // Pemanggilan rekursif dengan karakter baru ditambahkan
        }
    }
}

void main() {
  stdout.write("Jumlah karakter: ");
  int? n = int.tryParse(stdin.readLineSync() ?? ""); 
  
  // Validasi input agar tidak negatif atau kosong
  if (n == null || n <= 0) { 
    print("Input tidak valid.");
    return;
  }
  
  // Memanggil fungsi rekursif
  charCombination("", n); 
  print("\nBUILD SUCCESSFUL");
}