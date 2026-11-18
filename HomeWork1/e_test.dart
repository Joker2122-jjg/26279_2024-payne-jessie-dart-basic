String grade(int mark) {
  // by JAP
  if (mark >= 80) {
    return 'A';
  } else if (mark >= 70) {
    return 'B';
  } else if (mark >= 50) {
    return 'C';
  }

  return 'F';
}

bool isPalindrome(String word) {
  // by JAP
  int i = 0;

  while (i < word.length ~/ 2) {
    if (word[i] != word[word.length - 1 - i]) {
      return false;
    }

    i++;
  }

  return true;
}

void main() {
  // by JAP
  print(grade(85));
  print(isPalindrome('level'));
  print(isPalindrome('hello'));
  print(isPalindrome('Level'));
}