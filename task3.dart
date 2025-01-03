import 'dart:io';

void main() {
  // Read input 
  int n = int.parse(stdin.readLineSync()!);  //length
  String s = stdin.readLineSync()!;          //word
  int k = int.parse(stdin.readLineSync()!);  // key

  //  store the encrypted string
  StringBuffer encryptedString = StringBuffer();

  // Encrypt the string
  for (int i = 0; i < n; i++) {
    // Check if the character is a letter
    if (s[i].codeUnitAt(0) >= 65 && s[i].codeUnitAt(0) <= 90) {
      
      encryptedString.writeCharCode(((s[i].codeUnitAt(0) - 65 + k) % 26) + 65);  // Encrypt the uppercase letter

    } else if (s[i].codeUnitAt(0) >= 97 && s[i].codeUnitAt(0) <= 122) { 
      encryptedString.writeCharCode(((s[i].codeUnitAt(0) - 97 + k) % 26) + 97);  // Encrypt the lowercase letter

    } else {     
      encryptedString.write(s[i]);     //  unchanged if it's not a letter
    }
  }
  
  print(encryptedString.toString());
}


 