import 'dart:io';

void main() {

  List<int> numbers = [];
  print('Please enter 6 integers:');

  for (int i = 0; i < 6; i++) {

    int? input = int.tryParse(stdin.readLineSync() ?? '');
    if (input != null) {
      numbers.add(input);
    } else {
      print('Invalid input. Please enter an integer.');
      i--;
    }
  }


  int sumOfOddNumbers = 0;
  for (int number in numbers) {
    if (number % 2 != 0) {
      sumOfOddNumbers += number;
    }
  }


  int smallestNumber = numbers.reduce((current, next) => current < next ? current : next);


  print('The sum of odd numbers: $sumOfOddNumbers');
  print('The smallest number in the list: $smallestNumber');
}
