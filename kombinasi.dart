import 'dart:io';

void charCombination(String a, int n) { 
    if (n == 0) {
        stdout.write('$a ');
    } else {
        for (int i = 97; i < 100; i++) {
            charCombination(a + String.fromCharCode(i), n - 1); 
        }
    }
}

void main() {
  stdout.write("Jumlah karakter: ");
  int? n = int.tryParse(stdin.readLineSync() ?? ""); 
  
  if (n == null || n <= 0) { 
    print("Input tidak valid.");
    return;
  }
  
  charCombination("", n); 
  print("\nBUILD SUCCESSFUL");
}
