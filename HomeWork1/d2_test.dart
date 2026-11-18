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