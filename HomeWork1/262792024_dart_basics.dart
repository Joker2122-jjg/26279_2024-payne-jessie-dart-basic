// Student: Jessie Allen Payne
// Reg no: 26279/2024
// D = 4
// T = 24

const String regNo = '262792024';
final int d = int.parse(regNo[regNo.length - 1]);
final int t = int.parse(regNo.substring(regNo.length - 2));

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

int momoFee(int amount) {
  // by JAP
  if (amount <= 0) {
    return -1;
  } else if (amount <= 1000) {
    return 20;
  } else if (amount <= 10000) {
    return 100;
  } else if (amount <= 150000) {
    return 250;
  } else {
    return 1500;
  }
}

String maskPhone(String phone) {
  // by JAP
  if (phone.length != 10) {
    return 'INVALID';
  }

  return phone.substring(0, 3) +
      '*****' +
      phone.substring(8);
}

void main() {
  // by JAP
  print('Jessie Allen Payne has ${countVowels('Jessie Allen Payne')} vowels');

  int i = 1;
  int totalFees = 0;
  String phone = '0788123456';

  while (i <= d + 3) {
    int amount = i * 4000 + t * 100;
    int fee = momoFee(amount);

    totalFees += fee;

    print(
      'Receipt $i | $amount RWF | fee $fee RWF | to ${maskPhone(phone)}',
    );

    i++;
  }

  print('Total fees: $totalFees RWF');
}