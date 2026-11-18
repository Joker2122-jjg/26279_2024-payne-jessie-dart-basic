int countVowels(String text) {
  // by JAP
  String lowerText = text.toLowerCase();
  int count = 0;
  int i = 0;

  while (i < lowerText.length) {
    if ('aeiou'.contains(lowerText[i])) {
      count++;
    }
    i++;
  }

  return count;
}

void main() {
  // by JAP
  String fullName = 'Jessie Allen Payne';

  print('$fullName has ${countVowels(fullName)} vowels');
}