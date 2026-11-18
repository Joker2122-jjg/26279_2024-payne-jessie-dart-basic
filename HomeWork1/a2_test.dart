void main() {
  int x = 4;
  int y = 24;

  var z = x * 2 + y ~/ 4;
  z += x;

  print(z);
  print(z.isEven);
  print('$z' + '$x');
}