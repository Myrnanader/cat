bool isPalindrome(int x) {
  if (x < 0 || (x % 10 == 0 && x != 0)) {
    return false;
  }

  int reversed = 0;
  while (x > reversed) {
    reversed = reversed * 10 + x % 10;
    x ~/= 10;
  }

  return x == reversed || x == reversed ~/ 10;
}

void main() {
  print(isPalindrome(121));   // Output: true
  print(isPalindrome(-121));  // Output: false
  print(isPalindrome(10));    // Output: false
  print(isPalindrome(12321)); // Output: true
  print(isPalindrome(0));     // Output: true
}